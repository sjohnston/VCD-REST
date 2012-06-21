package VCD::Schema::External::OVF::NetworkSection_Type_Network;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'name' => (is => 'rw', xml_name => 'name', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Description' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::Msg_Type]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item name

=item Description

=back

=cut


1;
