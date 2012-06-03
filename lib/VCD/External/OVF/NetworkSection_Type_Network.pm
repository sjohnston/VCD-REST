package VCD::External::OVF::NetworkSection_Type_Network;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'name' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'name');
has_xml 'Description' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');



=head1 ATTRIBUTES

=over

=item name

=item Description

=back

=cut


1;
