package VCD::External::OVF::ProductSection_Type_Icon;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'height' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'height');
has_xml_attr 'width' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'width');
has_xml_attr 'mimeType' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'mimeType');
has_xml_attr 'fileRef' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'fileRef');





=head1 ATTRIBUTES

=over

=item height

=item width

=item mimeType

=item fileRef

=back

=cut


1;
