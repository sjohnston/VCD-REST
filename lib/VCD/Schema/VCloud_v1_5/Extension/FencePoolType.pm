package VCD::Schema::VCloud_v1_5::Extension::FencePoolType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::Extension::VMWNetworkPoolType';

has_xml 'FenceIdCount' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VlanId' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VimSwitchRef' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'UsedNetworksCount' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'PromiscuousMode' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Mtu' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a network pool backed by one or more vSphere isolated networks.



=head1 ATTRIBUTES

=over

=item FenceIdCount

modifiable: always

Number of fence IDs in this pool.

=item VlanId

modifiable: always

VLAN ID to be used for this pool or 0 for no VLAN.

=item VimSwitchRef

modifiable: always

Reference to the vSphere switch that supports this VLAN.

=item UsedNetworksCount

modifiable: none

This is a read-only indication of how many networks in this pool are in
use.

=item PromiscuousMode

Internal use only.

=item Mtu

Maximum transmission unit of the underlying VMware vNetwork Distributed
Switch.

=back

=cut


1;
