package VCD::Schema::VCloud_v1_5::DhcpServiceType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::NetworkServiceType';

has_xml 'DefaultLeaseTime' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'MaxLeaseTime' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IpRange' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::IpRangeType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Represents a DHCP network service.



=head1 ATTRIBUTES

=over

=item DefaultLeaseTime

modifiable: always

Default lease in seconds for DHCP addresses.

=item MaxLeaseTime

modifiable: always

Max lease in seconds for DHCP addresses.

=item IpRange

modifiable: always

IP range for DHCP addresses.

=back

=cut


1;
