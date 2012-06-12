package VCD::Schema::Type;
use Moose;
use VCD::Schema;

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

1;