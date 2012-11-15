package VCD::Schema::External::OVF::EnvelopeType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'lang' => (is => 'rw', xml_is_optional => '1', xml_name => '{http://www.w3.org/XML/1998/namespace}lang', xml_namespace => 'http://www.w3.org/XML/1998/namespace');
has_xml 'References' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::ReferencesType]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Content' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Strings' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::StringsType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Root OVF descriptor type



=head1 ATTRIBUTES

=over

=item lang

=item References

References to all external files

=item Section

Package level meta-data

=item Content

Content: A VirtualSystem or a VirtualSystemCollection

=item Strings

Localized string resource bundles

=back

=cut


1;
