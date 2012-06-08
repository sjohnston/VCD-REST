package VCD::VCloud_1_5::RuntimeInfoSectionType_VMWareTools;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'version' => (is => 'ro', xml_name => 'version', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');





=head1 ATTRIBUTES

=over

=item version

modifiable: none

Version of the vmware tools

=back

=cut


1;
