package VCD::VCloud_1_5::ReferenceType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml_attr 'href' => (is => 'rw', xml_namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'href');
has_xml_attr 'id' => (is => 'rw', xml_namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'id');
has_xml_attr 'type' => (is => 'rw', xml_namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'type');
has_xml_attr 'name' => (is => 'rw', xml_namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'name');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

A reference to a resource. Contains an href attribute and optional name and
type attributes.



=head1 ATTRIBUTES

=over

=item href

modifiable: always

Contains the URI to the entity.

=item id

modifiable: always

The resource identifier, expressed in URN format. The value of this
attribute uniquely identifies the resource, persists for the life of the
resource, and is never reused.

=item type

modifiable: always

Contains the type of the the entity.

=item name

modifiable: always

Contains the name of the the entity.

=back

=cut


1;
