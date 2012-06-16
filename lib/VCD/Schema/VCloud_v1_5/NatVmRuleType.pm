package VCD::Schema::VCloud_v1_5::NatVmRuleType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'ExternalIpAddress' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::IpAddressType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ExternalPort' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppScopedVmId' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VmNicId' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'InternalPort' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Protocol' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::IpAddressType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents the NAT rule for port forwarding between VM NIC/port and
external IP/port.



=head1 ATTRIBUTES

=over

=item ExternalIpAddress

modifiable: always

External IP address to forward to.

=item ExternalPort

modifiable: always

External port to forward to.

=item VAppScopedVmId

=head1 API

Available Since API: 1.0

modifiable: always

VAppScopedVmId of VM to which this rule applies.

=item VmNicId

modifiable: always

VM NIC ID to which this rule applies.

=item InternalPort

modifiable: always

Internal port to forward.

=item Protocol

=head1 API

Available Since API: 1.0

modifiable: always

Protocol to forward. One of: TCP (forward TCP packets), UDP (forward UDP
packets), TCP_UDP (forward TCP and UDP packets).

=back

=cut


1;
