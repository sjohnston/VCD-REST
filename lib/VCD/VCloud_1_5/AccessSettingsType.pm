package VCD::VCloud_1_5::AccessSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'AccessSetting' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::AccessSettingType]', xml_maximum => 'unbounded', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::AccessSettingType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

A list of access settings for a resource.



=head1 ATTRIBUTES

=over

=item AccessSetting

modifiable: always

Access setting for a resource.

=back

=cut


1;
