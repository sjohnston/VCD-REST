package VCD::Schema::VCloud_v1_5::TaskType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'operation' => (is => 'ro', xml_is_optional => '1', xml_name => 'operation', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'operationName' => (is => 'ro', xml_is_optional => '1', xml_name => 'operationName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'startTime' => (is => 'ro', xml_is_optional => '1', xml_name => 'startTime', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'endTime' => (is => 'ro', xml_is_optional => '1', xml_name => 'endTime', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'expiryTime' => (is => 'ro', xml_is_optional => '1', xml_name => 'expiryTime', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Owner' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Error' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ErrorType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'User' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Organization' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Progress' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Params' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents an asynchronous or long-running task in the vCloud environment.



=head1 ATTRIBUTES

=over

=item status

modifiable: none

The execution status of the task. One of: queued (The task has been queued
for execution.), preRunning (The task is awaiting preprocessing or, if it
is a blocking task, administrative action.), running (The task is
runnning.), success (The task completed with a status of success.), error
(The task encountered an error while running.), canceled (The task was
canceled by the owner or an administrator.), aborted (The task was aborted
by an administrative action.)

=item operation

modifiable: none

The display name of the operation that is tracked by this task.

=item operationName

modifiable: none

The name of the operation that is tracked by this task.

=item startTime

modifiable: none

The date and time the system started executing the task. May not be present
if the task hasn't been executed yet.

=item endTime

modifiable: none

The date and time that processing of the task was completed. May not be
present if the task is still being executed.

=item expiryTime

modifiable: none

The date and time at which the task resource will be destroyed and no
longer available for retrieval. May not be present if the task has not been
executed or is still being executed.

=item Owner

modifiable: none

Reference to the owner of the task.

=item Error

modifiable: none

Represents an error information if the task failed.

=item User

=head1 API

Available Since API: 1.5

modifiable: none

The user who started the task.

=item Organization

=head1 API

Available Since API: 1.5

modifiable: none

The organization that started the task.

=item Progress

=head1 API

Available Since API: 1.5

modifiable: none

The progress of a long running asynchronous task. The value is between 0 -
100. Not all tasks have progress, the value is not present for task which
progress is not available.

=item Params

=head1 API

Available Since API: 1.5

modifiable: none

The parameters with which this task has been run.

=back

=cut


1;
