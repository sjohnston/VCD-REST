package VCD::VCloud_1_5::TaskType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityType';

has_xml 'status' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'status');
has_xml 'operation' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'operation');
has_xml 'operationName' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'operationName');
has_xml 'startTime' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'startTime');
has_xml 'endTime' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'endTime');
has_xml 'expiryTime' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'expiryTime');
has_xml 'Owner' => (is => 'ro', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Error' => (is => 'ro', isa => 'VCD::VCloud_1_5::ErrorType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'User' => (is => 'ro', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Organization' => (is => 'ro', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Progress' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Params' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

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
