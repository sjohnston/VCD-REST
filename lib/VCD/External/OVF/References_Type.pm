package VCD::External::OVF::References_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'File' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::File_Type]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 DESCRIPTION

Type for list of external resources



=head1 ATTRIBUTES

=over

=item File

=back

=cut


1;
