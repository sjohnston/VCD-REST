package VCD::Schema::External::OVF::Strings_Type_Msg;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'msgid' => (is => 'rw', xml_name => 'msgid', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');



__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

String element value



=head1 ATTRIBUTES

=over

=item msgid

String element identifier

=back

=cut


1;
