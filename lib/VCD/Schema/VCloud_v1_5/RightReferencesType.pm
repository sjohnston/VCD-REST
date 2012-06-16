package VCD::Schema::VCloud_v1_5::RightReferencesType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'RightReference' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::ReferenceType;


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
