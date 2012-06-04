package VCD::VCloud_1_5::VdcReferencesType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'VdcReference' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

List of organization vDCs backed by this provider vDC.



=head1 ATTRIBUTES

=over

=item VdcReference

modifiable: none

A reference to an organizaiotn vDC.

=back

=cut


1;