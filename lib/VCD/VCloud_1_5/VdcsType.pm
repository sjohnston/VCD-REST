package VCD::VCloud_1_5::VdcsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Vdc' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::ReferenceType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a list of references to virtual data centers.



=head1 ATTRIBUTES

=over

=item Vdc

modifiable: none

Reference to a virtual data center.

=back

=cut


1;
