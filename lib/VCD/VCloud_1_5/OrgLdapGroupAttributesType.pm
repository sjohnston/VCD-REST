package VCD::VCloud_1_5::OrgLdapGroupAttributesType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'ObjectClass' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ObjectIdentifier' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'GroupName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Membership' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'MembershipIdentifier' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'BackLinkIdentifier' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Defines how a group is imported from LDAP.



=head1 ATTRIBUTES

=over

=item ObjectClass

modifiable: always

LDAP objectClass of which imported groups are members. For example, group.

=item ObjectIdentifier

modifiable: always

LDAP attribute to use as the unique identifier for a group. For example,
objectGuid.

=item GroupName

modifiable: always

LDAP attribute to use for the group name. For example, cn.

=item Membership

modifiable: always

LDAP attribute to use when getting the members of a group. For example,
member.

=item MembershipIdentifier

modifiable: always

LDAP attribute that identifies a group as a member of another group. For
example, dn.

=item BackLinkIdentifier

modifiable: none

LDAP group attribute used to identify a group member.

=back

=cut


1;
