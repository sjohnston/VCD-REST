package VCD::Schema::VCloud_v1_5::Extension::LdapSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'HostName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Port' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'IsSsl' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'IsSslAcceptAll' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Realm' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'PagedSearchDisabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'PageSize' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'MaxResults' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'MaxUserGroups' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SearchBase' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'UserName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Password' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AuthenticationMechanism' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'GroupSearchBase' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'IsGroupSearchBaseEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ConnectorType' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'UserAttributes' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::LdapUserAttributesType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'GroupAttributes' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::LdapGroupAttributesType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::LdapUserAttributesType;
use VCD::Schema::VCloud_v1_5::Extension::LdapGroupAttributesType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Defines the hostname and connection details for system LDAP service.



=head1 ATTRIBUTES

=over

=item HostName

modifiable: always

Hostname of the LDAP server.

=item Port

modifiable: always

Port at which to connect to the LDAP service.

=item IsSsl

modifiable: always

True if the LDAP service requires an SSL connection.

=item IsSslAcceptAll

modifiable: always

True if the LDAP service accepts all SSL certificates.

=item Realm

modifiable: always

LDAP realm to use when looking up users.

=item PagedSearchDisabled

modifiable: always

True if paged search is disabled.

=item PageSize

modifiable: always

Size of the page.

=item MaxResults

modifiable: always

Maximum results returned.

=item MaxUserGroups

modifiable: always

Maximum results returned for user groups.

=item SearchBase

modifiable: always

LDAP search base.

=item UserName

modifiable: always

Username to use when logging in to LDAP, specified using LDAP
attribute=value pairs (for example: cn="ldap-admin", c="example",
dc="com").

=item Password

modifiable: always

On modify, the presence of this element indicates a change in the password,
absence indicates that the password should remain the same. Never returned
on a GET request. Password for the user identified by UserName. This value
is never returned by GET. It is inspected on create and modify. On modify,
the absence of this element indicates that the password should not be
changed.

=item AuthenticationMechanism

modifiable: always

Defines the authentication mechanism used by the LDAP service.

=item GroupSearchBase

modifiable: always

LDAP group search base.

=item IsGroupSearchBaseEnabled

modifiable: always

True if the group search base is enabled.

=item ConnectorType

modifiable: always

Defines the type of the LDAP service.

=item UserAttributes

modifiable: always

Defines how LDAP attributes are used when importing a user.

=item GroupAttributes

modifiable: always

Defines how LDAP attributes are used when importing a group.

=back

=cut


1;
