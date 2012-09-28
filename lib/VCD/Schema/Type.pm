package VCD::Schema::Type;

use Moose;
use VCD::Schema;

use Class::Load qw(load_class);
use List::Util qw(first);
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
        next unless (ref $arg && ! blessed $arg);

        my $attr = $class->meta->find_attribute_by_name($attr_name);
        next unless ($attr);
        my $type = $attr->type_constraint if ($attr->has_type_constraint);

        if ($type && $type->is_a_type_of('Maybe')) {
            $type = $type->type_parameter;
        }

        if ($type && $type->is_a_type_of('ArrayRef') && $type->type_parameter->can('class')) {
            my $class = $type->type_parameter->class;
            load_class($class);
            next unless $class->isa('VCD::Schema::Type');

            my @new;
            foreach my $a (@$arg) {
                push @new, $class->new(%$a, xml_name => $attr_name);
            }
            $args->{$attr_name} = \@new;
            next;
        }

        if ($type->can('class')) {
            my $class = $type->class;
            load_class($class);
            $args->{$attr_name} = $class->new(%$arg, xml_name => $attr_name);
        }
    }

    return $args;
};

sub _build_xml_hash {
    my $self = shift;

    return { } unless $self->has_vcd_rest && $self->has_href;
    my $xml = $self->vcd_rest->get_hash($self->href);
    my ($name) = keys %$xml;
    $self->xml_name($name);
    return $xml->{$name}->[0];
}

sub to_xml_string {
    my ($self) = @_;

    my $doc = XML::LibXML::Document->new('1.0', 'UTF-8');
    my $node = $self->to_xml($doc);
    $doc->setDocumentElement($node);

    return $doc->toString;
}

sub to_xml {
    my ($self, $doc, $attr) = @_;

    my ($ns, $name) = $self->xml_name =~ m/^\{(.*?)\}(.*)$/;
    $ns = ($attr && $attr->can('xml_namespace'))?$attr->xml_namespace:'http://www.vmware.com/vcloud/v1.5';
    $name ||= $self->xml_name;

    my $node = $doc->createElementNS($ns, $name);

    foreach my $attr ( $self->get_xml_attributes ) {
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
            my $child = $value->to_xml($doc, $attr);
            $node->appendChild($child);
        }
        elsif ($attr->can('attr_to_xml')) {
            $attr->attr_to_xml($doc, $node, $value);
        }
    }

    return $node;
}

sub get_xml_attributes {
    my $self = shift;
    my $meta = $self->meta;

    my ($super) = $meta->superclasses;
    my @attrs = $super->get_xml_attributes if ($super && $super->can('get_xml_attributes'));
    push @attrs, $meta->map_xml_attributes(sub { $meta->get_attribute($_) });

    return @attrs;
}

sub put {
    my $self = shift;

    $self->vcd_rest->put($self->href, $self->type, $self->to_xml_string);
}

sub delete {
    my $self = shift;

    $self->vcd_rest->delete($self->href);
}

sub post_link {
    my ($self, $rel, $type, $xml_name, $data) = @_;

    my $links = $self->Link;
    my $link = first { $_->rel eq $rel && $_->type eq $type } @{ $self->Link };

    die "Can't find link" unless ($link);

    my $obj = $self->vcd_rest->map_object($type, $xml_name, $data);

    return $self->vcd_rest->post($link->href, $type, $obj->to_xml_string);
}

1;
