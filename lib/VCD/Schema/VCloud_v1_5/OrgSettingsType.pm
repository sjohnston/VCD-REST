package VCD::Schema::VCloud_v1_5::OrgSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'OrgGeneralSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OrgGeneralSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppLeaseSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OrgLeaseSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppTemplateLeaseSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OrgVAppTemplateLeaseSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'OrgLdapSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OrgLdapSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'OrgEmailSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OrgEmailSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'OrgPasswordPolicySettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OrgPasswordPolicySettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Describes various settings for some organization. This type establishes
quotas and policies for the organization. It also contains elements that
specify the details of how the organization connects to LDAP and email
services.



=head1 ATTRIBUTES

=over

=item OrgGeneralSettings

modifiable: always

Defines general org settings.

=item VAppLeaseSettings

modifiable: always

Defines default lease durations and related policies.

=item VAppTemplateLeaseSettings

modifiable: always

=head1 API

Available Since API: 1.5

Defines default lease policies for vAppTemplate on organization level.

=item OrgLdapSettings

modifiable: always

Defines the hostname and connection details for the organization s primary
LDAP service.

=item OrgEmailSettings

modifiable: always

Defines the email settings for this organization.

=item OrgPasswordPolicySettings

modifiable: always

Defines the password policy settings for an organization. If not explicitly
set, the organization inherits the system password policy settings.

=back

=cut


1;
