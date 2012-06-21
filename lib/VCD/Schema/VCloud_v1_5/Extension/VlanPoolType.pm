package VCD::Schema::VCloud_v1_5::Extension::VlanPoolType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::Extension::VMWNetworkPoolType';

has_xml 'VlanRange' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::Extension::NumericRangeType]', xml_maximum => 'unbounded', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VimSwitchRef' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'UsedNetworksCount' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'PromiscuousMode' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a network pool backed by one or more vSphere VLANs.



=head1 ATTRIBUTES

=over

=item VlanRange

modifiable: always

VLAN range used for this pool.

=item VimSwitchRef

modifiable: none

Reference to the vSphere switch which is used for this pool.

=item UsedNetworksCount

modifiable: none

This is a read-only indication of how many networks in this pool are in
use.

=item PromiscuousMode

Internal use only.

=back

=cut


1;
