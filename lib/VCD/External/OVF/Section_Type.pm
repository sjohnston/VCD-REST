package VCD::External::OVF::Section_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'required' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'required');
has_xml 'Info' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::Msg_Type;


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
