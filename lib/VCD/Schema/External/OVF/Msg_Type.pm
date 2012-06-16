package VCD::Schema::External::OVF::Msg_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'msgid' => (is => 'rw', xml_is_optional => '1', xml_name => 'msgid', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');



__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Type for localizable string

=head1 DESCRIPTION

Default string value



=head1 ATTRIBUTES

=over

=item msgid

Identifier for lookup in string resource bundle for alternate locale

=back

=cut


1;
