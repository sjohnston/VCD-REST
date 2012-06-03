package VCD::External::OVF::EulaSection_Type;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml 'License' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 DESCRIPTION

End-User License Agreement



=head1 ATTRIBUTES

=over

=item License

=back

=cut


1;
