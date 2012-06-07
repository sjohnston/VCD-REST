package VCD::VCloud_1_5::IpAddressesType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'IpAddress' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::IpAddressType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::IpAddressType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

A list of IP addresses.



=head1 ATTRIBUTES

=over

=item IpAddress

modifiable: always

An IP address.

=back

=cut


1;
