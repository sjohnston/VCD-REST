package VCD::VCloud_1_5::NetworkPoolReferencesType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'NetworkPoolReference' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::ReferenceType;


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
