package VCD::VCloud_1_5::OrgSettingsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'OrgGeneralSettings' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::OrgGeneralSettingsType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppLeaseSettings' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::OrgLeaseSettingsType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppTemplateLeaseSettings' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::OrgVAppTemplateLeaseSettingsType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'OrgLdapSettings' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::OrgLdapSettingsType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'OrgEmailSettings' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::OrgEmailSettingsType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'OrgPasswordPolicySettings' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::OrgPasswordPolicySettingsType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::OrgPasswordPolicySettingsType;
use VCD::VCloud_1_5::OrgVAppTemplateLeaseSettingsType;
use VCD::VCloud_1_5::OrgLdapSettingsType;
use VCD::VCloud_1_5::OrgEmailSettingsType;
use VCD::VCloud_1_5::OrgLeaseSettingsType;
use VCD::VCloud_1_5::OrgGeneralSettingsType;


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
