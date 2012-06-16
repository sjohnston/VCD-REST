package VCD::Schema::VCloud_v1_5::IpAddressesType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'IpAddress' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::IpAddressType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::IpAddressType;


__PACKAGE__->meta->make_immutable;

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
