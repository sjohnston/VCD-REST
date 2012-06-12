package VCD::External::OVF::File_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'id' => (is => 'rw', xml_name => 'id', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'href' => (is => 'rw', xml_name => 'href', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'size' => (is => 'rw', xml_is_optional => '1', xml_name => 'size', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'compression' => (is => 'rw', xml_is_optional => '1', xml_name => 'compression', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'chunkSize' => (is => 'rw', xml_is_optional => '1', xml_name => 'chunkSize', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');



=head1 DESCRIPTION

Type for an external reference to a resource



=head1 ATTRIBUTES

=over

=item id

Reference key used in other parts of the package

=item href

Location of external resource

=item size

Size in bytes of the files (if known)

=item compression

Compression type (gzip, bzip2, or none if empty or not specified)

=item chunkSize

Chunk size (except for last chunk)

=back

=cut


1;
