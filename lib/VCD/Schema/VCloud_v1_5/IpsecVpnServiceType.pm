package VCD::Schema::VCloud_v1_5::IpsecVpnServiceType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::NetworkServiceType';

has_xml 'ExternalIpAddress' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::IpAddressType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'PublicIpAddress' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::IpAddressType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IpsecVpnTunnel' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::IpsecVpnTunnelType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::IpAddressType;
use VCD::Schema::VCloud_v1_5::IpsecVpnTunnelType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents an IPSec-VPN network service.



=head1 ATTRIBUTES

=over

=item ExternalIpAddress

=head1 API

Available Since API: 1.5

modifiable: none

IP address of external enterface of the Edge.

=item PublicIpAddress

=head1 API

Available Since API: 1.5

modifiable: always

Public IP address of the Edge.

=item IpsecVpnTunnel

=head1 API

Available Since API: 1.5

modifiable: always

Details of an IPSec-VPN tunnel.

=back

=cut


1;
