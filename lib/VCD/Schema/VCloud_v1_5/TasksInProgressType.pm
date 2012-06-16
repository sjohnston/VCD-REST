package VCD::Schema::VCloud_v1_5::TasksInProgressType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'Task' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::TaskType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::TaskType;


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
