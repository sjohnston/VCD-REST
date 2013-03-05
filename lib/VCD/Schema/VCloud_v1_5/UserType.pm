package VCD::Schema::VCloud_v1_5::UserType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'FullName' => (is => 'rw', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'EmailAddress' => (is => 'rw', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Telephone' => (is => 'rw', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsLocked' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IM' => (is => 'rw', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NameInSource' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsAlertEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AlertEmailPrefix' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AlertEmail' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsExternal' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsDefaultCached' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsGroupRole' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'StoredVmQuota' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DeployedVmQuota' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Role' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Password' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'GroupReferences' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::GroupsListType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents users in the vCloud system.



=head1 ATTRIBUTES

=over

=item FullName

modifiable: always

Full name of the user.

=item EmailAddress

modifiable: always

User s email address.

=item Telephone

modifiable: always

Telephone contacts of the user.

=item IsEnabled

modifiable: always

Not specifying this flag in the request to update a User will result in
disabling it (default value if flag is not specified is false).

=item IsLocked

modifiable: always

This flag is set if the user account has been locked due to too many
invalid login attempts. A locked user account can be re-enabled by updating
the user with this flag set to false. (However, the account cannot be
manually locked by setting it to true - setting this flag is only done by
the login process).

=item IM

modifiable: always

User's instant messaging address.

=item NameInSource

modifiable: always

User name as retrieved from, and in the encoding used by, LDAP.

=item IsAlertEnabled

modifiable: always

True if alerts are enabled for the user.

=item AlertEmailPrefix

modifiable: always

String to prepend to alert message Subject line.

=item AlertEmail

modifiable: always

True if this user should get alert email.

=item IsExternal

modifiable: always

Indicates whether a user is imported from an external source or not. Set to
true on user creation in order to import from an external (LDAP) source.

=item IsDefaultCached

modifiable: always

True if this user is cached.

=item IsGroupRole

modifiable: always

True if this user has a group role.

=item StoredVmQuota

=head1 API

Available Since API: 1.0

modifiable: always

Quota of vApps that this user can store. A value of 0 specifies an
unlimited quota.

=item DeployedVmQuota

=head1 API

Available Since API: 1.0

modifiable: always

Quota of vApps that this user can deploy concurrently. A value of 0
specifies an unlimited quota.

=item Role

modifiable: always

A reference to the user s role. When you are creating a User, the request
body must contain exactly one Role element.

=item Password

modifiable: always

The user s password. This value is never returned by GET. It is inspected
on create and modify. On modify, the absence of this element indicates that
the password should not be changed.

=item GroupReferences

modifiable: none

Container for ReferenceType elements that reference groups of which this
user is a member.

=back

=cut


1;
