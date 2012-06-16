package VCD::Schema::VCloud_v1_5::NatServiceType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::NetworkServiceType';

has_xml 'NatType' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Policy' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NatRule' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::NatRuleType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::NatRuleType;


=head1 DESCRIPTION

Represents a NAT network service.



=head1 ATTRIBUTES

=over

=item NatType

modifiable: always

One of: ipTranslation (use IP translation), portForwarding (use port
forwarding)

=item Policy

modifiable: always

One of: allowTraffic (Allow all traffic), allowTrafficIn (Allow inbound
traffic only)

=item NatRule

modifiable: always

A NAT rule.

=back

=cut


1;
