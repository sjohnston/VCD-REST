package VCD::Schema::VCloud_v1_5::VCloudType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'OrganizationReferences' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OrganizationReferencesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ProviderVdcReferences' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ProviderVdcReferencesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'RightReferences' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::RightReferencesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'RoleReferences' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::RoleReferencesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Networks' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NetworksType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

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
