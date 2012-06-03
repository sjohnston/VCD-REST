package VCD::VCloud_1_5::ProviderVdcType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityType';

has_xml 'status' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ComputeCapacity' => (is => 'ro', isa => 'VCD::VCloud_1_5::RootComputeCapacityType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'StorageCapacity' => (is => 'ro', isa => 'VCD::VCloud_1_5::ProviderVdcCapacityType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AvailableNetworks' => (is => 'ro', isa => 'VCD::VCloud_1_5::AvailableNetworksType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Capabilities' => (is => 'ro', isa => 'VCD::VCloud_1_5::CapabilitiesType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Vdcs' => (is => 'rw', isa => 'VCD::VCloud_1_5::VdcsType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsEnabled' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NetworkPoolReferences' => (is => 'ro', isa => 'VCD::VCloud_1_5::NetworkPoolReferencesType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Provider vDC read only type.



=head1 ATTRIBUTES

=over

=item status

modifiable: none

Creation status of the provider VDC. One of: -1 (creation failed), 0 (not
ready), 1 (ready), 2 (unknown), 3 (unrecognized)

=item ComputeCapacity

modifiable: none

Read-only indicator of CPU and memory capacity.

=item StorageCapacity

modifiable: none

Read-only indicator of datastore capacity.

=item AvailableNetworks

modifiable: none

Read-only list of available networks.

=item Capabilities

modifiable: none

Read-only list of VM hardware versions supported by this vDC.

=item Vdcs

Read-only list of organization vDCs supported by this provider vDC.

=item IsEnabled

modifiable: always

Flag to show the enabled status of provider VDC. Note that the provider vDC
is always enabled on creation, but can be modified later through the
isEnabled flag.

=item NetworkPoolReferences

modifiable: none

Read-only list of network pools available to this provider vDC.

=back

=cut


1;
