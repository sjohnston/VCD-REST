package VCD::VCloud_1_5::CatalogType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityType';

has_xml 'Owner' => (is => 'ro', isa => 'VCD::VCloud_1_5::OwnerType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'CatalogItems' => (is => 'rw', isa => 'VCD::VCloud_1_5::CatalogItemsType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsPublished' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Container for references to VappTemplate and Media objects.



=head1 ATTRIBUTES

=over

=item Owner

modifiable: none

Catalog owner.

=item CatalogItems

modifiable: always

List of catalog items in the catalog.

=item IsPublished

modifiable: always

True if the catalog is published, false otherwise. Note that this value is
treated as a read only value by the server. Use the 'publish' action to
control publishing settings.

=back

=cut


1;
