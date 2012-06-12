package VCD::VCloud_1_5::NatPortForwardingRuleType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'ExternalIpAddress' => (is => 'rw', isa => 'VCD::VCloud_1_5::IpAddressType', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ExternalPort' => (is => 'rw', isa => 'Str', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'InternalIpAddress' => (is => 'rw', isa => 'VCD::VCloud_1_5::IpAddressType', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'InternalPort' => (is => 'rw', isa => 'Str', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Protocol' => (is => 'rw', isa => 'Str', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::IpAddressType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents the NAT rule for port forwarding between internal IP/port and
external IP/port.



=head1 ATTRIBUTES

=over

=item ExternalIpAddress

modifiable: always

External IP address to forward to.

=item ExternalPort

modifiable: always

External port to forward to.

=item InternalIpAddress

modifiable: always

Internal IP address to forward to.

=item InternalPort

modifiable: always

Internal port to forward to.

=item Protocol

modifiable: always

Protocol to forward. One of: TCP (forward TCP packets), UDP (forward UDP
packets), TCP_UDP (forward TCP and UDP packets).

=back

=cut


1;
