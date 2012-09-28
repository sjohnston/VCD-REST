package VCD::Schema::VCloud_v1_5::VdcType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

with 'VCD::Roles::VdcType';

has_xml_attr 'status' => (is => 'ro', xml_is_optional => '1', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AllocationModel' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'StorageCapacity' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::CapacityWithUsageType]', xml_maximum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ComputeCapacity' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ComputeCapacityType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ResourceEntities' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ResourceEntitiesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AvailableNetworks' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::AvailableNetworksType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Capabilities' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::CapabilitiesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NicQuota' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NetworkQuota' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VmQuota' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a virtual data center (vDC).



=head1 ATTRIBUTES

=over

=item status

modifiable: none

Creation status of vDC could be: READY(1) if it is ready for use
NOT_READY(0) if it is in process of creation FAILED_CREATION(-1) in case of
creation error

=item AllocationModel

modifiable: always

The allocation model used by this vDC. One of: AllocationVApp (Pay as you
go. Resources are committed to a vDC only when vApps are created in it.
When you use this allocation model, any Limit values you specify for Memory
and CPU are ignored on create and returned as 0 on retrieve.),
AllocationPool (Only a percentage of the resources you allocate are
committed to the organization vDC.), ReservationPool (All the resources you
allocate are committed as a pool to the organization vDC. vApps in vDCs
that support this allocation model can specify values for resource and
limit.)

=item StorageCapacity

modifiable: always

The storage capacity allocated to this vDC.

=item ComputeCapacity

modifiable: always

The compute capacity allocated to this vDC.

=item ResourceEntities

modifiable: none

Read only list of resource entities in this vDC.

=item AvailableNetworks

modifiable: none

Read only list of available networks accessible from this vDC.

=item Capabilities

modifiable: none

Read only list of supported VM hardware capabilities for this vDC.

=item NicQuota

modifiable: always

Maximum number of virtual NICs allowed in this vDC. Defaults to 0, which
specifies an unlimited number.

=item NetworkQuota

modifiable: always

Maximum number of network objects that can be deployed in this vDC.
Defaults to 0, which specifies an unlimited number.

=item VmQuota

modifiable: always

The quota of VMs that can be created in this vDC. Includes VMs in both
vApps and vApp templates, deployed, or otherwise. Defaults to 0, which
specifies an unlimited number.

=item IsEnabled

modifiable: always

Flag to indicates if this vDC is enabled for use or not, default value is
true.

=back

=cut


1;
