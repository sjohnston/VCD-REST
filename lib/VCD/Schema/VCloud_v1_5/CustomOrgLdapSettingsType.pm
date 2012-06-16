package VCD::Schema::VCloud_v1_5::CustomOrgLdapSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'HostName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Port' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsSsl' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsSslAcceptAll' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Realm' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'SearchBase' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'UserName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Password' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AuthenticationMechanism' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'GroupSearchBase' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsGroupSearchBaseEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ConnectorType' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'UserAttributes' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OrgLdapUserAttributesType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'GroupAttributes' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OrgLdapGroupAttributesType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::OrgLdapGroupAttributesType;
use VCD::Schema::VCloud_v1_5::OrgLdapUserAttributesType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Used when OrgLdapMode=CUSTOM to define connection details for the
organization's LDAP service.



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

One of: SIMPLE (Simple authentication as specified in RFC 2251 and RFC
2829.), KERBEROS (Kerberos authentication), MD5DIGEST (Digest MD5
authentication as specified in RFC 2831.), NTLM (Windows NTLM
authentication.)

=item GroupSearchBase

modifiable: always

LDAP group search base.

=item IsGroupSearchBaseEnabled

modifiable: always

True if the group search base is enabled.

=item ConnectorType

modifiable: always

Specifies LDAP service implementation type. One of: ACTIVE_DIRECTORY (LDAP
service provided by Microsoft Active Directory.), OPEN_LDAP (LDAP service
provided by Open LDAP).

=item UserAttributes

modifiable: always

Defines how LDAP attributes are used when importing a user.

=item GroupAttributes

modifiable: always

Defines how LDAP attributes are used when importing a group.

=back

=cut


1;
