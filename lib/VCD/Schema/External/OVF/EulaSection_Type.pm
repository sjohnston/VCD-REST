package VCD::Schema::External::OVF::EulaSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::Section_Type';

has_xml 'License' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::Msg_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::Schema::External::OVF::Msg_Type;


=head1 DESCRIPTION

End-User License Agreement



=head1 ATTRIBUTES

=over

=item License

=back

=cut


1;