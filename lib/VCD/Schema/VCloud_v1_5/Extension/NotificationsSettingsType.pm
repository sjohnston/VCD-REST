package VCD::Schema::VCloud_v1_5::Extension::NotificationsSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'EnableNotifications' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Represents the settings related to Notifications.

=head1 API

Available Since API: 1.5



=head1 ATTRIBUTES

=over

=item EnableNotifications

modifiable: always

Boolean flag to turn on/off notification messages.

=back

=cut


1;
