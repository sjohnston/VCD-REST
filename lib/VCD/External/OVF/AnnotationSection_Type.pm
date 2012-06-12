package VCD::External::OVF::AnnotationSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::External::OVF::Section_Type';

has_xml 'Annotation' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::Msg_Type;


=head1 DESCRIPTION

User defined annotation



=head1 ATTRIBUTES

=over

=item Annotation

=back

=cut


1;
