package VCD::External::OVF::Env::PropertySection_Type_Property;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'key' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1', xml_name => 'key');
has_xml_attr 'value' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1', xml_name => 'value');





=head1 ATTRIBUTES

=over

=item key

=item value

=back

=cut


1;
