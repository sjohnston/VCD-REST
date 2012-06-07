package VCD::External::OVF::Msg_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'msgid' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'msgid');



=head1 DESCRIPTION

Type for localizable string

=head1 DESCRIPTION

Default string value



=head1 ATTRIBUTES

=over

=item msgid

Identifier for lookup in string resource bundle for alternate locale

=back

=cut


1;
