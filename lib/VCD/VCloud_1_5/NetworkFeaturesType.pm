package VCD::VCloud_1_5::NetworkFeaturesType;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'NetworkService' => (is => 'rw', isa => 'ArrayRef[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 DESCRIPTION

Represents features of a network.



=head1 ATTRIBUTES

=over

=item NetworkService

=back

=cut


1;
