package VCD::Schema::VCloud_v1_5::RequestOperationParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'Message' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents parameters to a request.



=head1 ATTRIBUTES

=over

=item Message

modifiable: always

Message that will be associated with the action.

=back

=cut


1;
