package VCD::External::OVF::NetworkSection_Type_Network;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'name' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'name');
has_xml 'Description' => (is => 'rw', isa => 'Maybe[VCD::External::OVF::Msg_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::Msg_Type;




=head1 ATTRIBUTES

=over

=item name

=item Description

=back

=cut


1;
