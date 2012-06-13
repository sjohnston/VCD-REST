package VCD::VCloud_1_5::OrgLdapUserAttributesType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'ObjectClass' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ObjectIdentifier' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'UserName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Email' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'FullName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'GivenName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Surname' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Telephone' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'GroupMembershipIdentifier' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'GroupBackLinkIdentifier' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Defines how LDAP attributes are used when importing a user.



=head1 ATTRIBUTES

=over

=item ObjectClass

modifiable: always

LDAP objectClass of which imported users are members. For example, user or
person

=item ObjectIdentifier

modifiable: always

LDAP attribute to use as the unique identifier for a user. For example,
objectGuid.

=item UserName

modifiable: always

LDAP attribute to use when looking up a user name to import. For example,
userPrincipalName or samAccountName.

=item Email

modifiable: always

LDAP attribute to use for the user s email address. For example mail.

=item FullName

modifiable: always

LDAP attribute to use for the user s full name. For example displayName.

=item GivenName

modifiable: always

LDAP attribute to use for the user s given name. For example, givenName.

=item Surname

modifiable: always

LDAP attribute to use for the user s surname. For example sn.

=item Telephone

modifiable: always

LDAP attribute to use for the user s telephone number. For example
telephoneNumber.

=item GroupMembershipIdentifier

modifiable: always

LDAP attribute that identifies a user as a member of a group. For example,
dn.

=item GroupBackLinkIdentifier

modifiable: always

LDAP attribute that returns the identifiers of all the groups of which the
user is a member.

=back

=cut


1;
