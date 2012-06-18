package VCD::Schema::VCloud_v1_5::Extension::SystemPasswordPolicySettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'AccountLockoutEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AdminAccountLockoutEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'InvalidLoginsBeforeLockout' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AccountLockoutIntervalMinutes' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Represents the settings related to Password Policy.

=head1 API

Available Since API: 1.5



=head1 ATTRIBUTES

=over

=item AccountLockoutEnabled

modifiable: always

Boolean flag to turn on/off the account lockout feature.

=item AdminAccountLockoutEnabled

modifiable: always

Boolean flag to indicate whether system administrator accounts can lockout.

=item InvalidLoginsBeforeLockout

modifiable: always

Number of invalid login attempts that will trigger account lockout.

=item AccountLockoutIntervalMinutes

modifiable: always

Number of minutes an account that is locked out will remain locked.

=back

=cut


1;
