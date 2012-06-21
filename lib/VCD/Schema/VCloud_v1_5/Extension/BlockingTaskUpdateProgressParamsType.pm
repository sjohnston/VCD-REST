package VCD::Schema::VCloud_v1_5::Extension::BlockingTaskUpdateProgressParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::Extension::BlockingTaskOperationParamsType';

has_xml 'TimeoutValueInMilliseconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Parameters to update a blocking task with a new timeout.



=head1 ATTRIBUTES

=over

=item TimeoutValueInMilliseconds

modifiable: always

The new timeout in milliseconds that will serve as an offset value to the
current time. If this value is absent the timeout date for the blocking
task will not be changed.

=back

=cut


1;
