package VCD::VCloud_1_5::OrgPasswordPolicySettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'AccountLockoutEnabled' => (is => 'rw', isa => 'Str', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'InvalidLoginsBeforeLockout' => (is => 'rw', isa => 'Str', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AccountLockoutIntervalMinutes' => (is => 'rw', isa => 'Str', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 DESCRIPTION

Represents the settings related to Password Policy.

=head1 API

Available Since API: 1.5



=head1 ATTRIBUTES

=over

=item AccountLockoutEnabled

modifiable: always

Boolean flag to turn on/off the account lockout feature.

=item InvalidLoginsBeforeLockout

modifiable: always

Number of invalid login attempts that will trigger account lockout.

=item AccountLockoutIntervalMinutes

modifiable: always

Number of minutes an account that is locked out will remain locked.

=back

=cut


1;
