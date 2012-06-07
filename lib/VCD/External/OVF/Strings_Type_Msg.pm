package VCD::External::OVF::Strings_Type_Msg;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'msgid' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'msgid');



=head1 DESCRIPTION

String element value



=head1 ATTRIBUTES

=over

=item msgid

String element identifier

=back

=cut


1;
