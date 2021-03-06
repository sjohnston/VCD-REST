package VCD::Schema::VCloud_v1_5::ResourceType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml_attr 'href' => (is => 'rw', xml_is_optional => '1', xml_name => 'href', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'type' => (is => 'rw', xml_is_optional => '1', xml_name => 'type', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Link' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::LinkType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

The base type for all objects in the vCloud model. Has an optional list of
links and href and type attributes.



=head1 ATTRIBUTES

=over

=item href

modifiable: always

Contains the URI to the entity.

=item type

modifiable: always

Contains the type of the entity.

=item Link

modifiable: none

Optional link to an entity or operation associated with this object.

=back

=cut


1;
