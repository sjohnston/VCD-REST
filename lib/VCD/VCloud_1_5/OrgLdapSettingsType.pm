package VCD::VCloud_1_5::OrgLdapSettingsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'OrgLdapMode' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'CustomUsersOu' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'CustomOrgLdapSettings' => (is => 'rw', isa => 'VCD::VCloud_1_5::CustomOrgLdapSettingsType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Base settings for LDAP connection



=head1 ATTRIBUTES

=over

=item OrgLdapMode

modifiable: always

Defines whether this organization is connected to an LDAP service, and
whether it uses the system default LDAP service or a custom LDAP service.
One of: NONE (This organization has no LDAP connection.), SYSTEM (This
organization uses the system default LDAP service.), CUSTOM (This
organization uses the LDAP service specified in CustomOrgLdapSettings.)

=item CustomUsersOu

=head1 API

Available Since API: 1.0

modifiable: always

If OrgLdapMode is SYSTEM, specifies an LDAP attribute=value pair to use for
OU (organizational unit).

=item CustomOrgLdapSettings

=head1 API

Available Since API: 1.0

modifiable: always

If OrgLdapMode=CUSTOM, this element defines the hostname and connection
details for the organization's LDAP service.

=back

=cut


1;
