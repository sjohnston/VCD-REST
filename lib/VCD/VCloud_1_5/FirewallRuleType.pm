package VCD::VCloud_1_5::FirewallRuleType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'IsEnabled' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Description' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Policy' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Protocols' => (is => 'rw', isa => 'VCD::VCloud_1_5::FirewallRuleType_Protocols', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Port' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DestinationIp' => (is => 'rw', isa => 'VCD::VCloud_1_5::FirewallIpAddressType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'SourcePort' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'SourceIp' => (is => 'rw', isa => 'VCD::VCloud_1_5::FirewallIpAddressType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Direction' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'EnableLogging' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a firewall rule.



=head1 ATTRIBUTES

=over

=item IsEnabled

modifiable: always

Used to enable or disable the firewall rule. Default value is true.

=item Description

modifiable: always

A description of the rule.

=item Policy

modifiable: always

One of: drop (drop packets that match the rule), allow (allow packets that
match the rule to pass through the firewall)

=item Protocols

modifiable: always

Specify the protocols to which the rule should be applied.

=item Port

modifiable: always

The port to which this rule applies. A value of -1 matches any port.

=item DestinationIp

=head1 API

Available Since API: 1.0

modifiable: always

Destination IP address to which the rule applies. A value of Any matches
any IP address.

=item SourcePort

=head1 API

Available Since API: 1.5

modifiable: always

Destination port to which this rule applies. A value of -1 matches any
port.

=item SourceIp

=head1 API

Available Since API: 1.5

modifiable: always

Source IP address to which the rule applies. A value of Any matches any IP
address.

=item Direction

=head1 API

Available Since API: 1.5

modifiable: always

Direction of traffic to which rule applies. One of: in (rule applies to
incoming traffic. This is the default value), out (rule applies to outgoing
traffic).

=item EnableLogging

=head1 API

Available Since API: 1.5

modifiable: always

Used to enable or disable firewall rule logging. Default value is false.

=back

=cut


1;
