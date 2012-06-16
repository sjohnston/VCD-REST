package VCD::Schema::VCloud_v1_5::ReferenceType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml_attr 'href' => (is => 'rw', xml_name => 'href', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'id' => (is => 'rw', xml_is_optional => '1', xml_name => 'id', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'type' => (is => 'rw', xml_is_optional => '1', xml_name => 'type', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'name' => (is => 'rw', xml_is_optional => '1', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



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
