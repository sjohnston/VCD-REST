package VCD::Schema::VCloud_v1_5::EntityReferenceType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml_attr 'id' => (is => 'ro', xml_name => 'id', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'type' => (is => 'rw', xml_is_optional => '1', xml_name => 'type', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'name' => (is => 'rw', xml_is_optional => '1', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

A reference to a vCloud entity.



=head1 ATTRIBUTES

=over

=item id

modifiable: none

The object identifier, expressed in URN format. The value of this attribute
uniquely identifies the object, persists for the life of the object, and is
never reused. This context-free identifier can apply to any object in any
system.

=item type

modifiable: always

The type of the the referenced object.

=item name

modifiable: always

The name of the referenced object.

=back

=cut


1;
