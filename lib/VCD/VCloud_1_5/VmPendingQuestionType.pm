package VCD::VCloud_1_5::VmPendingQuestionType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'Question' => (is => 'ro', isa => 'Str', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'QuestionId' => (is => 'rw', isa => 'Str', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Choices' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::VmQuestionAnswerChoiceType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::VmQuestionAnswerChoiceType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a question which vSphere issued for a VM in a stuck
state(WAITING_FOR_INPUT). It has a question element, a question ID element,
and a list of choices with at least one element.



=head1 ATTRIBUTES

=over

=item Question

modifiable: none

Question text.

=item QuestionId

modifiable: always

Question ID used to map answer choice to.

=item Choices

modifiable: always

Choices of answers to the question.

=back

=cut


1;
