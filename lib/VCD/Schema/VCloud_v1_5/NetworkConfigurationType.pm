package VCD::Schema::VCloud_v1_5::NetworkConfigurationType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'IpScope' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::IpScopeType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ParentNetwork' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'FenceMode' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'RetainNetInfoAcrossDeployments' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Features' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NetworkFeaturesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'SyslogServerSettings' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::SyslogServerSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'RouterInfo' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::RouterInfoType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::SyslogServerSettingsType;
use VCD::Schema::VCloud_v1_5::IpScopeType;
use VCD::Schema::VCloud_v1_5::RouterInfoType;
use VCD::Schema::VCloud_v1_5::NetworkFeaturesType;
use VCD::Schema::VCloud_v1_5::ReferenceType;


__PACKAGE__->meta->make_immutable;

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
