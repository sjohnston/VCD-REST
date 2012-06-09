package VCD::HasXML;

use Moose::Exporter;
use List::Util qw(first);

Moose::Exporter->setup_import_methods(
    with_meta => ['has_xml', 'has_xml_attr', 'has_xml_link'],
);

sub has_xml {
    my $meta = shift;
    my $name = shift;
    my %opts = @_;

    my $ns = $opts{'xml_namespace'};
    my $xml_name = $opts{'xml_name'} || "{$ns}$name";

    $opts{'lazy'} = 1;
    $opts{'builder'} = "_build_$name";
    $opts{'traits'} ||= ['VCD::XMLElement'];

    my $attr = $meta->add_attribute($name, %opts);

    $meta->add_method( "_build_$name" => _make_builder($attr, $xml_name, $name) );
}

sub has_xml_attr {
    has_xml(@_, traits => ['VCD::XMLAttribute']);
}

sub _make_builder {
    my ($attr, $xml_name, $name) = @_;

    my $type = $attr->type_constraint->name if ($attr->has_type_constraint);

    my $subtype;
    if ($type && $type =~ /^ArrayRef/) {
        $subtype = $attr->type_constraint->type_parameter->name;
    }

    if ($type && $type =~ /^Maybe/) {
        $type = $attr->type_constraint->type_parameter->name;
    }

    return sub {
        my $self = shift;
        my $xml_hash = $self->xml_hash->{$xml_name};
        if (ref $xml_hash eq 'ARRAY') {
            my @list = map { $subtype->new( xml_name => $xml_name, xml_hash => $_, vcd_rest => $self->vcd_rest ) } @$xml_hash;
            return \@list;
        }
        return [];
    } if ($subtype);

    return sub {
        my $self = shift;
        my $xml_hash = $self->xml_hash->{$xml_name};
        return $type->new( xml_name => $xml_name, xml_hash => $xml_hash, vcd_rest => $self->vcd_rest )
            if ($xml_hash);
    } if ($type && $type ne 'Str');

    return sub { my $self = shift;
        my $value = $self->xml_hash->{$xml_name};
        return if (ref $value eq 'HASH' && !%$value);
        return $value;
    };
}

sub has_xml_link {
    my $meta = shift;
    my $name = shift;
    my %opts = @_;

    my $type = delete $opts{'xml_type'};
    my $rel = delete $opts{'xml_rel'};

    $opts{'lazy'} = 1;
    $opts{'builder'} = "_build_link_$name";

    my $attr = $meta->add_attribute($name, %opts);
    my $class = $opts{'isa'};

    $meta->add_method( "_build_link_$name" => sub {
            my $self = shift;
            my $link = first { $_->{'rel'} eq $rel && $_->{'type'} eq $type }
                @{ $self->xml_hash->{'{http://www.vmware.com/vcloud/v1.5}Link'} };
            return $class->new( href => $link->{'href'}, vcd_rest => $self->vcd_rest );
        }
    );
}

package VCD::HasXMLTrait;
use Moose::Role;

use Scalar::Util 'blessed';

has xml_hash => (
    is => 'rw',
    isa => 'HashRef',
    lazy => 1,
    builder => '_build_xml_hash',
);

has xml_name => (
    is => 'rw',
    isa => 'Str',
);

has vcd_rest => (
    is => 'rw',
    isa => 'VCD::REST',
    predicate => 'has_vcd_rest',
);

around BUILDARGS => sub {
    my $orig = shift;
    my $class = shift;

    my $args = $class->$orig(@_);

    foreach my $attr_name (keys %$args) {
        next if ($attr_name eq 'xml_hash');
        my $arg = $args->{$attr_name};
        next unless (ref $arg eq 'HASH' && ! blessed $arg);

        my $attr = $class->meta->get_attribute($attr_name);
        next unless ($attr);
        my $type = $attr->type_constraint->name if ($attr->has_type_constraint);

        if ($type && $type =~ /^Maybe/) {
            $type = $attr->type_constraint->type_parameter->name;
        }

        $args->{$attr_name} = $type->new(%$arg, xml_name => $attr_name);
    }

    return $args;
};

sub _build_xml_hash {
    my $self = shift;

    return { } unless $self->has_vcd_rest;
    my $xml = $self->vcd_rest->get($self->href);
    my ($name) = keys %$xml;
    $self->xml_name($name);
    return $xml->{$name};
}

sub to_xml_string {
    my ($self) = @_;

    my $doc = XML::LibXML::Document->new('1.0', 'UTF-8');
    my $node = $self->to_xml($doc);
    $doc->setDocumentElement($node);

    return $doc->toString;
}

sub to_xml {
    my ($self, $doc) = @_;

    my ($ns, $name) = $self->xml_name =~ m/^\{(.*?)\}(.*)$/;

    my $node;
    if ($ns) {
        $node = $doc->createElementNS($ns, $name);
    }
    else {
        $node = $doc->createElementNS('http://www.vmware.com/vcloud/v1.5', $self->xml_name);
    }

    my $meta = $self->meta;

    foreach my $attr ( $meta->get_all_attributes ) {
        my $type = $attr->type_constraint;
        my $reader = $attr->get_read_method;
        my $value = $self->$reader if ($reader);

        next if (!defined $value && $attr->can('xml_is_optional')
                                 && $attr->xml_is_optional);

        if (ref $value eq 'ARRAY') {
            foreach my $c (@$value) {
                my $child = $c->to_xml($doc);
                $node->appendChild($child);
            }
        }
        elsif (eval { $value->can('to_xml') }) {
            my $child = $value->to_xml($doc);
            $node->appendChild($child);
        }
        elsif ($attr->can('attr_to_xml')) {
            $attr->attr_to_xml($doc, $node, $value);
        }
    }

    return $node;
}

package VCD::XMLAttribute;
use Moose::Role;

has xml_namespace => (is => 'ro', isa => 'Str');
has xml_name => (is => 'rw', isa => 'Str');
has xml_is_optional => (is => 'ro', isa => 'Bool', default => 0);

sub attr_to_xml {
    my ($self, $doc, $parent, $value) = @_;

    $parent->setAttribute($self->name, $value // '');
}

package VCD::XMLElement;
use Moose::Role;

has xml_namespace => (is => 'ro', isa => 'Str');
has xml_name => (is => 'rw', isa => 'Str');
has xml_minimum => (is => 'ro', isa => 'Int', predicate => 'has_xml_minimum');
has xml_maximum => (is => 'ro', isa => 'Str', predicate => 'has_xml_maximum');
has xml_is_optional => (is => 'ro', isa => 'Bool', lazy => 1, builder => '_build_xml_is_optional');

sub _build_xml_is_optional {
    my $self = shift;
    return $self->has_xml_minimum && $self->xml_minimum == 0;
}

sub attr_to_xml {
    my ($self, $doc, $parent, $value) = @_;

    my $child = $doc->createElement($self->name);
    $child->appendChild( XML::LibXML::Text->new($value) ) if (defined $value);
    $parent->appendChild($child);
}

1;
