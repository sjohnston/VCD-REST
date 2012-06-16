package VCD::Schema::VCloud_v1_5::CatalogType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'Owner' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OwnerType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'CatalogItems' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::CatalogItemsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsPublished' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::OwnerType;
use VCD::Schema::VCloud_v1_5::CatalogItemsType;


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
