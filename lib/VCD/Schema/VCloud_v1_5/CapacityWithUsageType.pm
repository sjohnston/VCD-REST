package VCD::Schema::VCloud_v1_5::CapacityWithUsageType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::CapacityType';

has_xml 'Used' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Overhead' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a capacity and usage of a given resource.



=head1 ATTRIBUTES

=over

=item Used

modifiable: none

Capacity usage value.

=item Overhead

=head1 API

Available Since API: 1.0

modifiable: none

Overhead value of capacity.

=back

=cut


1;
