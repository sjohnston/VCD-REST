package VCD::VCloud_1_5::OrganizationReferencesType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'OrganizationReference' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::OrganizationReferenceType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Container for OrganizationReferenceType elements that reference
AdminOrgType objects.



=head1 ATTRIBUTES

=over

=item OrganizationReference

modifiable: none

A OrganizationReferenceType elements that reference AdminOrgType objects.

=back

=cut


1;
