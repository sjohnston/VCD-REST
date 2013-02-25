package VCD::Schema::External::OVF::SectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'required' => (is => 'rw', xml_is_optional => '1', xml_name => 'required', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Info' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Base type for Sections, subclassing this is the most common form of
extensibility. Subtypes define more specific elements.



=head1 ATTRIBUTES

=over

=item required

=item Info

Info element describes the meaning of the Section, this is typically shown
if the Section is not understood by an application

=back

=cut


1;
