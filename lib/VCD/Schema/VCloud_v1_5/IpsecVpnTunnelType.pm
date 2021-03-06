package VCD::Schema::VCloud_v1_5::IpsecVpnTunnelType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'Name' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Description' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IpsecVpnPeer' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'PeerIpAddress' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'PeerNetworkAddress' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'PeerNetworkMask' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'SharedSecret' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'EncryptionProtocol' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Mtu' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsOperational' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ErrorDetails' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents details of an IPSec-VPN tunnel.



=head1 ATTRIBUTES

=over

=item Name

=head1 API

Available Since API: 1.5

modifiable: always

A name for the tunnel.

=item Description

=head1 API

Available Since API: 1.5

modifiable: always

A description of the tunnel.

=item IpsecVpnPeer

=head1 API

Available Since API: 1.5

modifiable: always

Details about the peer network.

=item PeerIpAddress

=head1 API

Available Since API: 1.5

modifiable: always

IP address of the peer Edge device.

=item PeerNetworkAddress

=head1 API

Available Since API: 1.5

modifiable: always

Address of the peer network.

=item PeerNetworkMask

=head1 API

Available Since API: 1.5

modifiable: always

Netmask of the peer network.

=item SharedSecret

=head1 API

Available Since API: 1.5

modifiable: always

Shared secret used for authentication.

=item EncryptionProtocol

=head1 API

Available Since API: 1.5

modifiable: always

Encryption protocol to be used. One of: AES, TRIPLEDES

=item Mtu

=head1 API

Available Since API: 1.5

modifiable: always

MTU for the tunnel.

=item IsEnabled

=head1 API

Available Since API: 1.5

modifiable: always

Specifies if the IPSec-VPN Tunnel should be enabled.

=item IsOperational

=head1 API

Available Since API: 1.5

modifiable: always

Specifies if the IPSec-VPN Tunnel is operational.

=item ErrorDetails

=head1 API

Available Since API: 1.5

modifiable: always

Details, in case the tunnel state is set to error.

=back

=cut


1;
