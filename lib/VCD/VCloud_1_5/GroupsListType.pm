package VCD::VCloud_1_5::GroupsListType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'GroupReference' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::ReferenceType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Container for ReferenceType elements that reference groups.



=head1 ATTRIBUTES

=over

=item GroupReference

modifiable: none

ReferenceType element that reference a catalog.

=back

=cut


1;
