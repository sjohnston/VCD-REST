package VCD::External::OVF::Strings_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'lang' => (is => 'rw', namespace => 'http://www.w3.org/XML/1998/namespace', xml_name => '{http://www.w3.org/XML/1998/namespace}lang');
has_xml 'fileRef' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'fileRef');
has_xml 'Msg' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::Strings_Type_Msg]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 DESCRIPTION

Type for string resource bundle



=head1 ATTRIBUTES

=over

=item lang

Locale for this string resource bundle

=item fileRef

Reference to external resource bundle

=item Msg

Resource bundle element

=back

=cut


1;
