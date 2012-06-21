package VCD::Schema::VCloud_v1_5::IpScopeType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'IsInherited' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Gateway' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Netmask' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Dns1' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Dns2' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DnsSuffix' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IpRanges' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::IpRangesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AllocatedIpAddresses' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::IpAddressesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Specify network settings like gateway, network mask, DNS servers, IP
ranges, etc.



=head1 ATTRIBUTES

=over

=item IsInherited

modifiable: always

True if the IP scope is inherit from parent network.

=item Gateway

modifiable: always

Gateway of the network.

=item Netmask

modifiable: always

Network mask.

=item Dns1

modifiable: always

Primary DNS server.

=item Dns2

modifiable: always

Secondary DNS server.

=item DnsSuffix

modifiable: always

DNS suffix.

=item IpRanges

modifiable: always

IP ranges used for static pool allocation in the network.

=item AllocatedIpAddresses

modifiable: none

Read-only list of allocated IP addresses in the network.

=back

=cut


1;
