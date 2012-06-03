package VCD::External::OVF::ProductSection_Type_Icon;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'height' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'height');
has_xml 'width' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'width');
has_xml 'mimeType' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'mimeType');
has_xml 'fileRef' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'fileRef');



=head1 ATTRIBUTES

=over

=item height

=item width

=item mimeType

=item fileRef

=back

=cut


1;
