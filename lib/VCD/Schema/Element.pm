package VCD::Schema::Element;
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
