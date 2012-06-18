package VCD::Schema::VCloud_v1_5::Extension::BlockingTaskType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::TaskRequestBaseType';

has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Describes a blocking task request. Contains references to objects involved
in the task.



=head1 ATTRIBUTES

=over

=item status

modifiable: none

Status of the blocking task.

=back

=cut


1;
