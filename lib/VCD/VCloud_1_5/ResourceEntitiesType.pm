package VCD::VCloud_1_5::ResourceEntitiesType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'ResourceEntity' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ResourceReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::ResourceReferenceType;


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
