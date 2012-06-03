package VCD::VCloud_1_5::ResourceEntityType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityType';

has_xml 'status' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'status');
has_xml 'Files' => (is => 'ro', isa => 'VCD::VCloud_1_5::FilesListType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Base type that represents a resource entity such as a vApp template or
virtual media.



=head1 ATTRIBUTES

=over

=item status

modifiable: none

Creation status of the resource entity.

=item Files

modifiable: none

Represents a list of files to be transferred (uploaded or downloaded). Each
File in the list is part of the ResourceEntity.

=back

=cut


1;
