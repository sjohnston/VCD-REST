package VCD::VCloud_1_5::IpRangeType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'StartAddress' => (is => 'rw', isa => 'VCD::VCloud_1_5::IpAddressType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'EndAddress' => (is => 'rw', isa => 'VCD::VCloud_1_5::IpAddressType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::IpAddressType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a range of IP addresses, start and end inclusive.



=head1 ATTRIBUTES

=over

=item StartAddress

modifiable: always

Start address of the IP range.

=item EndAddress

modifiable: always

End address of the IP range.

=back

=cut


1;
