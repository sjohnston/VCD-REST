package VCD::Schema::VCloud_v1_5::NatRuleType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'Description' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'OneToOneBasicRule' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NatOneToOneBasicRuleType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'OneToOneVmRule' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NatOneToOneVmRuleType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'PortForwardingRule' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NatPortForwardingRuleType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VmRule' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NatVmRuleType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

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
