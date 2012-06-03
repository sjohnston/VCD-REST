package VCD::VCloud_1_5::ResourceEntitiesType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'ResourceEntity' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ResourceReferenceType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a list of references to resource entities.



=head1 ATTRIBUTES

=over

=item ResourceEntity

modifiable: none

Reference to a resource entity.

=back

=cut


1;
