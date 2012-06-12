package VCD::VCloud_1_5::FileType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::EntityType';

has_xml_attr 'size' => (is => 'ro', xml_name => 'size', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'bytesTransferred' => (is => 'ro', xml_name => 'bytesTransferred', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'checksum' => (is => 'ro', xml_name => 'checksum', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



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
