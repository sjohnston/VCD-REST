package VCD::Schema::VCloud_v1_5::Extension::BlockingTaskSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'TimeoutAction' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'BlockingTaskOperations' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::TaskOperationListType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'TimeoutInMilliseconds' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::BlockingTaskSettingsType_TimeoutInMilliseconds]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::BlockingTaskSettingsType_TimeoutInMilliseconds;
use VCD::Schema::VCloud_v1_5::TaskOperationListType;


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Represents the settings related to blocking tasks.

=head1 API

Available Since API: 1.5



=head1 ATTRIBUTES

=over

=item TimeoutAction

modifiable: always

Action to be taken by the automatic timeout policy processing when it gets
triggered due to timeout. One of: resume (The task will be resumed.), abort
(The task will be aborted. Transient objects are cleaned up. Task status is
set to ABORTED.), fail (The task will be failed. Transient object status
and task status are set to ERROR.)

=item BlockingTaskOperations

modifiable: always

Task operations which are enabled for blocking. If this element is empty or
not supplied no operations will block.

=item TimeoutInMilliseconds

modifiable: always

Value in milliseconds that defines how long to wait for a blocking task to
be processed before triggering automatic timeout policy.

=back

=cut


1;
