package VCD::VCloud_1_5::FileType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityType';

has_xml 'size' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'size');
has_xml 'bytesTransferred' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'bytesTransferred');
has_xml 'checksum' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'checksum');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a file to be transferred (uploaded or downloaded).



=head1 ATTRIBUTES

=over

=item size

modifiable: none

File size in bytes.

=item bytesTransferred

modifiable: none

Bytes that have been transferred.

=item checksum

modifiable: none

The checksum of the file.

=back

=cut


1;
