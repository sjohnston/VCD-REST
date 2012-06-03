package VCD::VCloud_1_5::NetworkConfigurationType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'IpScope' => (is => 'rw', isa => 'VCD::VCloud_1_5::IpScopeType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ParentNetwork' => (is => 'rw', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'FenceMode' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'RetainNetInfoAcrossDeployments' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Features' => (is => 'rw', isa => 'VCD::VCloud_1_5::NetworkFeaturesType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'SyslogServerSettings' => (is => 'ro', isa => 'VCD::VCloud_1_5::SyslogServerSettingsType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'RouterInfo' => (is => 'ro', isa => 'VCD::VCloud_1_5::RouterInfoType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

The configurations applied to a network. This is an abstract base type. The
concrete types include those for vApp and Organization wide networks.



=head1 ATTRIBUTES

=over

=item IpScope

modifiable: always

Includes IP level configuration items such as gateway, dns, subnet, IP
address pool to be used for allocation. Note that the pool of IP addresses
needs to fall within the subnet/mask of the IpScope.

=item ParentNetwork

modifiable: always

Contains reference to parent network.

=item FenceMode

modifiable: always

Isolation type of the network. If ParentNetwork is specified, this property
controls connectivity to the parent. One of: bridged (connected directly to
the ParentNetwork), isolated (not connected to any other network),
natRouted (connected to the ParentNetwork via a NAT service)

=item RetainNetInfoAcrossDeployments

modifiable: always

=head1 API

Available Since API: 1.5

Specifies whether the network resources such as IP/MAC of router will be
retained across deployments. Default is false.

=item Features

modifiable: always

Network features like DHCP, firewall and NAT rules.

=item SyslogServerSettings

modifiable: none

Syslog server settings for the network.

=item RouterInfo

=head1 API

Available Since API: 1.5

modifiable: none

Specifies router information.

=back

=cut


1;
