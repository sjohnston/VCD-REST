package VCD::Schema::VCloud_v1_5::TaskRequestBaseType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml_attr 'createdTime' => (is => 'ro', xml_name => 'createdTime', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'timeoutDate' => (is => 'ro', xml_name => 'timeoutDate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'timeoutAction' => (is => 'ro', xml_name => 'timeoutAction', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Organization' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'User' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'TaskOwner' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents generic request to a task. This is not supposed to be standalone
type.



=head1 ATTRIBUTES

=over

=item createdTime

modifiable: none

The creation date/time of the request itself.

=item timeoutDate

modifiable: none

The date/time at which this request times out. Requests time out if is not
acted upon within a configured interval. When a request times out, it is
automatically resumed, aborted or failed.

=item timeoutAction

modifiable: none

Action that is automatically taken when a request times out. One of: resume
(The task will be resumed.), abort (The task will be aborted. Transient
objects are cleaned up. Task status is set to ABORTED.), fail (The task
will be failed. Transient object status and task status are set to ERROR.)

=item Organization

modifiable: none

The organization in which the blocking task runs.

=item User

modifiable: none

The user who triggered the blocking task.

=item TaskOwner

modifiable: none

The owner of the blocking task.

=back

=cut


1;
