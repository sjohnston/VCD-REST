package VCD::External::OVF::Env::PropertySection_Type_Property;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'key' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/environment/1', xml_name => 'key');
has_xml 'value' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/environment/1', xml_name => 'value');



=head1 ATTRIBUTES

=over

=item key

=item value

=back

=cut


1;
