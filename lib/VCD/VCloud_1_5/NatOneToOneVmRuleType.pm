package VCD::VCloud_1_5::NatOneToOneVmRuleType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'MappingMode' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ExternalIpAddress' => (is => 'rw', isa => 'VCD::VCloud_1_5::IpAddressType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppScopedVmId' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VmNicId' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents the NAT rule for one to one mapping of VM NIC and external IP
addresses from a network.



=head1 ATTRIBUTES

=over

=item MappingMode

modifiable: always

Mapping mode.

=item ExternalIpAddress

modifiable: always

External IP address to map to VM.

=item VAppScopedVmId

=head1 API

Available Since API: 1.0

modifiable: always

VAppScopedVmId of the VM to which this rule applies.

=item VmNicId

modifiable: always

VM NIC ID to which this rule applies.

=back

=cut


1;
