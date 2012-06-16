package VCD::Schema::VCloud_v1_5::OrgLdapSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'OrgLdapMode' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'CustomUsersOu' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'CustomOrgLdapSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::CustomOrgLdapSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::CustomOrgLdapSettingsType;


__PACKAGE__->meta->make_immutable;

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
