package VCD::VCloud_1_5::CapacityWithUsageType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::CapacityType';

has_xml 'Used' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Overhead' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

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