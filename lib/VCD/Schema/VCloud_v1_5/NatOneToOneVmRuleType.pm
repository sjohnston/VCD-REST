package VCD::Schema::VCloud_v1_5::NatOneToOneVmRuleType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'MappingMode' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ExternalIpAddress' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::IpAddressType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppScopedVmId' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VmNicId' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::IpAddressType;


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
