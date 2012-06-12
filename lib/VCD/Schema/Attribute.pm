package VCD::Schema::Attribute;
use Moose::Role;

has xml_namespace => (is => 'ro', isa => 'Str');
has xml_name => (is => 'rw', isa => 'Str');
has xml_is_optional => (is => 'ro', isa => 'Bool', default => 0);

sub attr_to_xml {
    my ($self, $doc, $parent, $value) = @_;

    $parent->setAttribute($self->name, $value // '');
}

1;
