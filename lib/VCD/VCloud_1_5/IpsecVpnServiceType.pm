package VCD::VCloud_1_5::IpsecVpnServiceType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::NetworkServiceType';

has_xml 'ExternalIpAddress' => (is => 'ro', isa => 'Maybe[VCD::VCloud_1_5::IpAddressType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'PublicIpAddress' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::IpAddressType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IpsecVpnTunnel' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::IpsecVpnTunnelType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::IpsecVpnTunnelType;
use VCD::VCloud_1_5::IpAddressType;


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
