package VCD::VCloud_1_5::NetworkPoolReferencesType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'NetworkPoolReference' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

List of network pools in this vDC.



=head1 ATTRIBUTES

=over

=item NetworkPoolReference

modifiable: none

A reference to a network pool.

=back

=cut


1;
