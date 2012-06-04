package VCD::VCloud_1_5::CapacityType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Units' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Allocated' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Limit' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a capacity of a given resource.



=head1 ATTRIBUTES

=over

=item Units

modifiable: none

Units of capacity.

=item Allocated

modifiable: none

Allocated capacity value.

=item Limit

modifiable: none

Limit capacity value.

=back

=cut


1;