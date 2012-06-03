package VCD::External::OVF::AnnotationSection_Type;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml 'Annotation' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 DESCRIPTION

User defined annotation



=head1 ATTRIBUTES

=over

=item Annotation

=back

=cut


1;
