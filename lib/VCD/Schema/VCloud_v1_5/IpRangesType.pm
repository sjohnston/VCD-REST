package VCD::Schema::VCloud_v1_5::IpRangesType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'IpRange' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::IpRangeType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::IpRangeType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a list of IP ranges.



=head1 ATTRIBUTES

=over

=item IpRange

modifiable: always

IP range.

=back

=cut


1;
