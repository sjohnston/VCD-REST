package VCD::Schema::External::OVF::AnnotationSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::SectionType';

has_xml 'Annotation' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::MsgType]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

User defined annotation



=head1 ATTRIBUTES

=over

=item Annotation

=back

=cut


1;
