package VCD::Schema::VCloud_v1_5::NetworkConnectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml_attr 'network' => (is => 'rw', xml_name => 'network', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'needsCustomization' => (is => 'ro', xml_is_optional => '1', xml_name => 'needsCustomization', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NetworkConnectionIndex' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IpAddress' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ExternalIpAddress' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsConnected' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'MACAddress' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IpAddressAllocationMode' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a network connection.



=head1 ATTRIBUTES

=over

=item network

modifiable: always

Name of the network to which this NIC is connected.

=item needsCustomization

modifiable: none

Flag to signify if the NIC needs customization.

=item NetworkConnectionIndex

modifiable: always

Index of the NIC starting form 0 in a VM.

=item IpAddress

modifiable: always

IP address associated to this NIC.

=item ExternalIpAddress

modifiable: none

If the network that the NIC is connected to has NAT or port mapping, the
external address is populated in this element

=item IsConnected

modifiable: always

If the VM is undeployed, this field specifies whether the connection should
start in in connected state. Otherwise, it specifies the current state of
the connection. Furthermore, on using this structure to update the VM's
network connections state, this parameter can be used to either connect or
disconnect a connection.

=item MACAddress

modifiable: always

MAC address associated with the NIC.

=item IpAddressAllocationMode

modifiable: always

IP address allocation mode for this connection. One of: POOL (A static IP
address is allocated automatically from a pool of addresses.), DHCP (The IP
address is obtained from a DHCP service.), MANUAL (The IP address is
assigned manually in the IpAddress element.), NONE (No IP addressing mode
specified.)

=back

=cut


1;
