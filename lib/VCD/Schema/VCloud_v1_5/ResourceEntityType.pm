package VCD::Schema::VCloud_v1_5::ResourceEntityType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml_attr 'status' => (is => 'ro', xml_is_optional => '1', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Files' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::FilesListType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::FilesListType;


__PACKAGE__->meta->make_immutable;

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
