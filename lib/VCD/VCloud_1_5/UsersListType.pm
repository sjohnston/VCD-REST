package VCD::VCloud_1_5::UsersListType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'UserReference' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Container for ReferenceType elements that reference users.



=head1 ATTRIBUTES

=over

=item UserReference

modifiable: none

ReferenceType element that references a user.

=back

=cut


1;
