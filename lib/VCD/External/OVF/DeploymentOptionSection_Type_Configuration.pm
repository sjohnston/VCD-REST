package VCD::External::OVF::DeploymentOptionSection_Type_Configuration;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'id' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'id');
has_xml 'default' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'default');
has_xml 'Label' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Description' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');



=head1 ATTRIBUTES

=over

=item id

=item default

=item Label

=item Description

=back

=cut


1;
