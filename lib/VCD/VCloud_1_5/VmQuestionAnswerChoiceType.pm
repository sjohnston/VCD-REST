package VCD::VCloud_1_5::VmQuestionAnswerChoiceType;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'Id' => (is => 'ro', isa => 'Str', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Text' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a pair of ID and text of an answer choice of a VM question.



=head1 ATTRIBUTES

=over

=item Id

modifiable: none

Choice ID.

=item Text

modifiable: none

Answer text.

=back

=cut


1;
