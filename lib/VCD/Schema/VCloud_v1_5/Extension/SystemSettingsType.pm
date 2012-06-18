package VCD::Schema::VCloud_v1_5::Extension::SystemSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'GeneralSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::GeneralSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'NotificationsSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::NotificationsSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'LdapSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::LdapSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AmqpSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::AmqpSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'EmailSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::EmailSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'License' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::LicenseType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'BrandingSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::BrandingSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'BlockingTaskSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::BlockingTaskSettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'PasswordPolicySettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::SystemPasswordPolicySettingsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::LdapSettingsType;
use VCD::Schema::VCloud_v1_5::Extension::SystemPasswordPolicySettingsType;
use VCD::Schema::VCloud_v1_5::Extension::AmqpSettingsType;
use VCD::Schema::VCloud_v1_5::Extension::BrandingSettingsType;
use VCD::Schema::VCloud_v1_5::Extension::NotificationsSettingsType;
use VCD::Schema::VCloud_v1_5::Extension::GeneralSettingsType;
use VCD::Schema::VCloud_v1_5::Extension::LicenseType;
use VCD::Schema::VCloud_v1_5::Extension::BlockingTaskSettingsType;
use VCD::Schema::VCloud_v1_5::Extension::EmailSettingsType;


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Represents the settings of the system.

=head1 API

Available Since API: 1.5



=head1 ATTRIBUTES

=over

=item GeneralSettings

The general settings.

=item NotificationsSettings

Notifications settings.

=item LdapSettings

LDAP settings.

=item AmqpSettings

AMQP settings.

=item EmailSettings

Represent all the email related settings in the system.

=item License

This is used by the API to update and retrieve site license specific
information.

=item BrandingSettings

BrandingSettings stores all information about how to brand the product for
vCloud service, like provider name, logo etc.

=item BlockingTaskSettings

Blocking task settings.

=item PasswordPolicySettings

Password policy settings for the cloud provider administrator. These are
also inherited by organizations, unless overridden at the organization
level.

=back

=cut


1;
