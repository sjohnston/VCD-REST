package VCD::External::OVF::PropertyConfigurationValue_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'value' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'value');
has_xml 'configuration' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'configuration');

=head1 DESCRIPTION

Type for alternative default values for properties when
DeploymentOptionSection is used



=head1 ATTRIBUTES

=over

=item value

Alternative default property value

=item configuration

Configuration from DeploymentOptionSection in which this value is default

=back

=cut


1;