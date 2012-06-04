package VCD::VCloud_1_5::FirewallServiceType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::NetworkServiceType';

has_xml 'DefaultAction' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'LogDefaultAction' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'FirewallRule' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::FirewallRuleType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 DESCRIPTION

Represents a network firewall service.



=head1 ATTRIBUTES

=over

=item DefaultAction

modifiable: always

Default action of the firewall. One of: drop (Default. Drop packets that
match the rule.), allow (Allow packets that match the rule to pass through
the firewall)

=item LogDefaultAction

modifiable: always

Flag to enable logging for default action. Default value is false.

=item FirewallRule

modifiable: always

A firewall rule.

=back

=cut


1;