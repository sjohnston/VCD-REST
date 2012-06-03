package VCD::External::OVF::EnvelopeType;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'lang' => (is => 'rw', namespace => 'http://www.w3.org/XML/1998/namespace', xml_name => '{http://www.w3.org/XML/1998/namespace}lang');
has_xml 'References' => (is => 'rw', isa => 'VCD::External::OVF::References_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Content' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Strings' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::Strings_Type]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 DESCRIPTION

Root OVF descriptor type



=head1 ATTRIBUTES

=over

=item lang

=item References

References to all external files

=item Section

Package level meta-data

=item Content

Content: A VirtualSystem or a VirtualSystemCollection

=item Strings

Localized string resource bundles

=back

=cut


1;
