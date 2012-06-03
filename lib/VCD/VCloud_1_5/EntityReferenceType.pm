package VCD::VCloud_1_5::EntityReferenceType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'id' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'id');
has_xml 'type' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'type');
has_xml 'name' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'name');

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
