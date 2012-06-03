package VCD::VCloud_1_5::ResourceType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'href' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'href');
has_xml 'type' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'type');
has_xml 'Link' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::LinkType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

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
