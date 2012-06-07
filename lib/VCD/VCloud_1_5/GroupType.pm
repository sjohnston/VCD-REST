package VCD::VCloud_1_5::GroupType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityType';

has_xml 'NameInSource' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'UsersList' => (is => 'ro', isa => 'Maybe[VCD::VCloud_1_5::UsersListType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Role' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::ReferenceType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::ReferenceType;
use VCD::VCloud_1_5::UsersListType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents group in the system.



=head1 ATTRIBUTES

=over

=item NameInSource

modifiable: always

Group name as retrieved from, and in the encoding used by, LDAP.

=item UsersList

modifiable: none

A list of references to users in the group.

=item Role

modifiable: always

The role that the users in this group.

=back

=cut


1;
