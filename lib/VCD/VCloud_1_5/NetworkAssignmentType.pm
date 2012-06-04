package VCD::VCloud_1_5::NetworkAssignmentType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'innerNetwork' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'innerNetwork');
has_xml 'containerNetwork' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'containerNetwork');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents mapping between a VM and vApp network.



=head1 ATTRIBUTES

=over

=item innerNetwork

modifiable: always

Name of the VM network to map from.

=item containerNetwork

modifiable: always

Name of the vApp network to map to.

=back

=cut


1;