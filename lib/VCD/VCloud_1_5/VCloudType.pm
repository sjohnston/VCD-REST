package VCD::VCloud_1_5::VCloudType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityType';

has_xml 'OrganizationReferences' => (is => 'ro', isa => 'VCD::VCloud_1_5::OrganizationReferencesType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ProviderVdcReferences' => (is => 'ro', isa => 'VCD::VCloud_1_5::ProviderVdcReferencesType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'RightReferences' => (is => 'ro', isa => 'VCD::VCloud_1_5::RightReferencesType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'RoleReferences' => (is => 'ro', isa => 'VCD::VCloud_1_5::RoleReferencesType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Networks' => (is => 'ro', isa => 'VCD::VCloud_1_5::NetworksType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Top level container representing the cloud from the administrator's point
of view. Contains Organizations and provider vDCs.

=head1 DESCRIPTION

References to all Organizations in this cloud



=head1 ATTRIBUTES

=over

=item OrganizationReferences

modifiable: none

Container for references to AdminOrg objects in the vCloud.

=item ProviderVdcReferences

modifiable: none

A container for references to ProviderVdc objects in the vCloud.

=item RightReferences

modifiable: none

A container for references to Right objects in the vCloud.

=item RoleReferences

modifiable: none

A container for references to Role objects in the vCloud.

=item Networks

modifiable: none

A container for references to ExternalNetwork objects in the vCloud.

=back

=cut


1;
