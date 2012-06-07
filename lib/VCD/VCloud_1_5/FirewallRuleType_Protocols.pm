package VCD::VCloud_1_5::FirewallRuleType_Protocols;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'Tcp' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Udp' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Icmp' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Any' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');





=head1 ATTRIBUTES

=over

=item Tcp

modifiable: always

True if the rule applies to the TCP protocol.

=item Udp

modifiable: always

True if the rule applies to the UDP protocol.

=item Icmp

modifiable: always

True if the rule applies to the ICMP protocol.

=item Any

modifiable: always

True if the rule applies to any protocol.

=back

=cut


1;
