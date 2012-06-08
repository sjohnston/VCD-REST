package VCD::External::OVF::Content_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'id' => (is => 'rw', xml_name => 'id', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Info' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Name' => (is => 'rw', isa => 'Maybe[VCD::External::OVF::Msg_Type]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::Msg_Type;


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
