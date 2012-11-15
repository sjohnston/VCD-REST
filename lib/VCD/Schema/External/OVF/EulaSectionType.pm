package VCD::Schema::External::OVF::EulaSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::SectionType';

has_xml 'License' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::MsgType]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

End-User License Agreement



=head1 ATTRIBUTES

=over

=item License

=back

=cut


1;
