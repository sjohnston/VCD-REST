package VCD::Schema::External::OVF::ProductSection_Type_Icon;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'height' => (is => 'rw', xml_is_optional => '1', xml_name => 'height', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'width' => (is => 'rw', xml_is_optional => '1', xml_name => 'width', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'mimeType' => (is => 'rw', xml_is_optional => '1', xml_name => 'mimeType', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'fileRef' => (is => 'rw', xml_name => 'fileRef', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item height

=item width

=item mimeType

=item fileRef

=back

=cut


1;
