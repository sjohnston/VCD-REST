package VCD::VCloud_1_5::RightReferencesType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'RightReference' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Container for ReferenceType elements that reference the predefined
RightType objects.



=head1 ATTRIBUTES

=over

=item RightReference

modifiable: none

ReferenceType element that references a predefined RightType object.

=back

=cut


1;
