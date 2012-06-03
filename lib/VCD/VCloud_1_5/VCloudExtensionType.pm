package VCD::VCloud_1_5::VCloudExtensionType;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'required' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'required');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Cloud API extension type with any elements and any attributes.



=head1 ATTRIBUTES

=over

=item required

modifiable: always

Determines whether server should fail if extension is not understood.

=back

=cut


1;
