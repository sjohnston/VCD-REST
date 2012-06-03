package VCD::VCloud_1_5::ControlAccessParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'IsSharedToEveryone' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'EveryoneAccessLevel' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AccessSettings' => (is => 'rw', isa => 'VCD::VCloud_1_5::AccessSettingsType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Used to control access to resources.



=head1 ATTRIBUTES

=over

=item IsSharedToEveryone

modifiable: always

If true, this means that the resource is shared with everyone in the
organization. Defaults to false. Sharing settings must be manipulated
through the organization.

=item EveryoneAccessLevel

modifiable: always

If IsSharedToEveryone is true, this element must be present and determines
the access level.

=item AccessSettings

modifiable: always

The access settings to be applied if IsSharedToEveryone is false. Required
on create and modify if IsSharedToEveryone is false.

=back

=cut


1;
