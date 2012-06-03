package VCD::External::OVF::Content_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'id' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'id');
has_xml 'Info' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Name' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 DESCRIPTION

Base class for content



=head1 ATTRIBUTES

=over

=item id

=item Info

Info element describes the meaning of the content, this is typically shown
if the type is not understood by an application

=item Name

An optional localizable display name of the content

=item Section

Content body is a list of Sections

=back

=cut


1;
