package VCD::Schema::External::OVF::StringsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'lang' => (is => 'rw', xml_name => '{http://www.w3.org/XML/1998/namespace}lang', xml_namespace => 'http://www.w3.org/XML/1998/namespace');
has_xml_attr 'fileRef' => (is => 'rw', xml_is_optional => '1', xml_name => 'fileRef', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Msg' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::StringsTypeMsg]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Type for string resource bundle



=head1 ATTRIBUTES

=over

=item lang

Locale for this string resource bundle

=item fileRef

Reference to external resource bundle

=item Msg

Resource bundle element

=back

=cut


1;
