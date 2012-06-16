package VCD::Schema::External::OVF::AnnotationSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::Section_Type';

has_xml 'Annotation' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::Msg_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::Schema::External::OVF::Msg_Type;


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

User defined annotation



=head1 ATTRIBUTES

=over

=item Annotation

=back

=cut


1;
