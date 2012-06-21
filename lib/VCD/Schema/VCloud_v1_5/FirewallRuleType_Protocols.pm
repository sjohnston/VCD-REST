package VCD::Schema::VCloud_v1_5::FirewallRuleType_Protocols;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'Tcp' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Udp' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Icmp' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Any' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;



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
