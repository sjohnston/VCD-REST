package VCD::VCloud_1_5::TasksInProgressType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Task' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::TaskType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

A list of queued, running, or recently completed tasks.



=head1 ATTRIBUTES

=over

=item Task

modifiable: none

A task.

=back

=cut


1;
