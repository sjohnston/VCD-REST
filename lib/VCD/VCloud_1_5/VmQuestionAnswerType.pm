package VCD::VCloud_1_5::VmQuestionAnswerType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'ChoiceId' => (is => 'rw', isa => 'Str', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'QuestionId' => (is => 'rw', isa => 'Str', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a VM answer to a question when the VM is in a stuck
(WAITING_FOR_INPUT) state.



=head1 ATTRIBUTES

=over

=item ChoiceId

modifiable: always

Choice ID of the answer to the question.

=item QuestionId

modifiable: always

Question ID of the question.

=back

=cut


1;
