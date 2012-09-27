package VCD::Schema;

use Moose;
use Class::Load qw(load_class);
use List::Util qw(first);

Moose::Exporter->setup_import_methods(
    with_meta => ['has_xml', 'has_xml_attr', 'has_xml_link'],
    class_metaroles => {
        class => ['VCD::Schema::Meta'],
    },
);

sub has_xml {
    my $meta = shift;
    my $name = shift;
    my %opts = @_;

    my $ns = $opts{'xml_namespace'};
    my $xml_name = $opts{'xml_name'} || "{$ns}$name";

    $opts{'lazy'} = 1;
    $opts{'builder'} = "_build_$name";
    $opts{'predicate'} = "has_$name";
    $opts{'traits'} ||= ['VCD::Schema::Element'];

    my $attr = $meta->add_attribute($name, %opts);

    $meta->add_xml_attribute($name);

    $meta->add_method( "_build_$name" => _make_builder($attr, $xml_name, $name) );
}

sub has_xml_attr {
    has_xml(@_, traits => ['VCD::Schema::Attribute']);
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
            load_class($subtype);
            my @list = map { $subtype->new( xml_name => $xml_name, xml_hash => $_, vcd_rest => $self->vcd_rest ) } @$xml_hash;
            return \@list;
        }
        return [];
    } if ($subtype);

    return sub {
        my $self = shift;
        my $xml_hash = $self->xml_hash->{$xml_name}[0];
        load_class($type);
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

    $meta->add_method( "_build_link_$name" => _make_link_builder($name, $opts{'isa'}, $rel, $type) );
}

sub _make_link_builder {
    my ($name, $isa, $rel, $type) = @_;

    return sub {
        my $self = shift;
        my $attr = $self->meta->get_attribute($name);
        my $class = $attr->type_constraint->type_parameter->name;
        load_class($class);

        my @links;
        foreach my $link (@{ $self->xml_hash->{'{http://www.vmware.com/vcloud/v1.5}Link'} }) {
            next unless ( $link->{'rel'} eq $rel && $link->{'type'} eq $type );

            push @links, $class->new( %$link, vcd_rest => $self->vcd_rest );
        }
        return \@links;
    } if ($isa =~ /^ArrayRef/);

    return sub {
        my $self = shift;
        my $link = first { $_->{'rel'} eq $rel && $_->{'type'} eq $type }
            @{ $self->xml_hash->{'{http://www.vmware.com/vcloud/v1.5}Link'} };

        load_class($isa);
        return $isa->new( href => $link->{'href'}, type => $type, vcd_rest => $self->vcd_rest );
    };
}


1;
