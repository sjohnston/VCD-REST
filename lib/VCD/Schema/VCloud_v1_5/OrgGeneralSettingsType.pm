package VCD::Schema::VCloud_v1_5::OrgGeneralSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'CanPublishCatalogs' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DeployedVMQuota' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'StoredVmQuota' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'UseServerBootSequence' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DelayAfterPowerOnSeconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Defines general og settings.



=head1 ATTRIBUTES

=over

=item CanPublishCatalogs

modifiable: always

True if this organization is allowed to publish catalogs.

=item DeployedVMQuota

modifiable: always

Maximum number of virtual machines that can be deployed simultaneously by a
member of this organization.

=item StoredVmQuota

modifiable: always

Maximum number of vApps or vApp templates that can be stored (in an
undeployed state) by a member of this organization.

=item UseServerBootSequence

modifiable: always

True if virtual machines in this organization use the server boot sequence
by default.

=item DelayAfterPowerOnSeconds

modifiable: always

Specifies an organization default for virtual machine boot delay after
power on.

=back

=cut


1;
