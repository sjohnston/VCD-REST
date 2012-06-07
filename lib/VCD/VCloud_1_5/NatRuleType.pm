package VCD::VCloud_1_5::NatRuleType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Description' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'OneToOneBasicRule' => (is => 'rw', isa => 'VCD::VCloud_1_5::NatOneToOneBasicRuleType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'OneToOneVmRule' => (is => 'rw', isa => 'VCD::VCloud_1_5::NatOneToOneVmRuleType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'PortForwardingRule' => (is => 'rw', isa => 'VCD::VCloud_1_5::NatPortForwardingRuleType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VmRule' => (is => 'rw', isa => 'VCD::VCloud_1_5::NatVmRuleType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::NatOneToOneBasicRuleType;
use VCD::VCloud_1_5::NatPortForwardingRuleType;
use VCD::VCloud_1_5::NatOneToOneVmRuleType;
use VCD::VCloud_1_5::NatVmRuleType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a NAT rule.



=head1 ATTRIBUTES

=over

=item Description

=head1 API

Available Since API: 1.0

modifiable: always

Description of NAT rule.

=item OneToOneBasicRule

modifiable: always

Maps one internal IP address to one external IP address.

=item OneToOneVmRule

modifiable: always

Maps one VM NIC to one external IP addresses.

=item PortForwardingRule

modifiable: always

Port forwarding internal to external IP addresses.

=item VmRule

modifiable: always

Port forwarding VM NIC to external IP addresses.

=back

=cut


1;
