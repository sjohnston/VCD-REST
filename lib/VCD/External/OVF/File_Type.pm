package VCD::External::OVF::File_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'id' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'id');
has_xml_attr 'href' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'href');
has_xml_attr 'size' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'size');
has_xml_attr 'compression' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'compression');
has_xml_attr 'chunkSize' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'chunkSize');



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
