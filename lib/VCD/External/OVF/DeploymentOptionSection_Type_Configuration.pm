package VCD::External::OVF::DeploymentOptionSection_Type_Configuration;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'id' => (is => 'rw', xml_name => 'id', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'default' => (is => 'rw', xml_is_optional => '1', xml_name => 'default', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Label' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Description' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::Msg_Type;




=head1 ATTRIBUTES

=over

=item id

=item default

=item Label

=item Description

=back

=cut


1;
