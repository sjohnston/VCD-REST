package VCD::HasXML;

use Moose::Exporter;
use List::Util qw(first);

Moose::Exporter->setup_import_methods(
    with_meta => ['has_xml', 'has_xml_link'],
);

sub has_xml {
    my $meta = shift;
    my $name = shift;
    my %opts = @_;

    my $ns = delete $opts{'namespace'};
    my $xml_name = delete $opts{'xml_name'} || "{$ns}$name";

    $opts{'lazy'} = 1;
    $opts{'builder'} = "_build_$name";

    my $attr = $meta->add_attribute($name, %opts);

    $meta->add_method( "_build_$name" => _make_builder($attr, $xml_name, $name) );
}

sub _make_builder {
    my ($attr, $xml_name, $name) = @_;

    my $subtype = $attr->type_constraint->type_parameter->name
        if ($attr->has_type_constraint && $attr->type_constraint->can('type_parameter'));

    my $type = $attr->type_constraint->name if ($attr->has_type_constraint);

    return sub {
        my $self = shift;
        my $xml_hash = $self->xml_hash->{$xml_name};
        if (ref $xml_hash) {
            my @list = map { $subtype->new( xml_name => $xml_name, xml_hash => $_, vcd_rest => $self->vcd_rest ) } @$xml_hash;
            return \@list;
        }
        return $xml_hash;
    } if ($subtype);

    return sub {
        my $self = shift;
        my $xml_hash = $self->xml_hash->{$xml_name};
        return $type->new( xml_name => $xml_name, xml_hash => $xml_hash, vcd_rest => $self->vcd_rest );
    } if ($type && $type ne 'Str');

    return sub { my $self = shift;
        return $self->xml_hash->{$xml_name};
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
    my $class = $attr->type_constraint->name if ($attr->has_type_constraint);

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
    required => 1,
);

sub _build_xml_hash {
    my $self = shift;

    my $xml = $self->vcd_rest->get($self->href);
    my ($name) = keys %$xml;
    $self->xml_name($name);
    return $xml->{$name};
}

1;
