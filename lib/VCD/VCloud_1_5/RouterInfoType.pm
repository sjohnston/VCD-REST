package VCD::VCloud_1_5::RouterInfoType;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'ExternalIp' => (is => 'ro', isa => 'VCD::VCloud_1_5::IpAddressType', namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 ATTRIBUTES

=over

=item ExternalIp

modifiable: none

Specifies the external IP of the router. Applicable for NAT Routed / Fenced
networks only.

=back

=cut


1;
