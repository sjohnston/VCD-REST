package VCD::VCloud_1_5::NetworksType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Network' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::ReferenceType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Container for ReferenceType elements that reference ExternalNetwork
objects. This element is created by the server and is read only.



=head1 ATTRIBUTES

=over

=item Network

modifiable: none

ReferenceType element that references ExternalNetworkType object.

=back

=cut


1;
