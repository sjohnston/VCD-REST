package VCD::Schema::VCloud_v1_5::QueryResultAdminCatalogItemRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'entity' => (is => 'ro', xml_name => 'entity', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'entityName' => (is => 'ro', xml_name => 'entityName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'entityType' => (is => 'ro', xml_name => 'entityType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'catalog' => (is => 'ro', xml_name => 'catalog', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'catalogName' => (is => 'ro', xml_name => 'catalogName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'ownerName' => (is => 'ro', xml_name => 'ownerName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'owner' => (is => 'ro', xml_name => 'owner', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isPublished' => (is => 'ro', xml_name => 'isPublished', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vdc' => (is => 'ro', xml_name => 'vdc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vdcName' => (is => 'ro', xml_name => 'vdcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isVdcEnabled' => (is => 'ro', xml_name => 'isVdcEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'org' => (is => 'ro', xml_name => 'org', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'creationDate' => (is => 'ro', xml_name => 'creationDate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isExpired' => (is => 'ro', xml_name => 'isExpired', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a AdminCatalogItem vCloud query as a record.



=head1 ATTRIBUTES

=over

=item entity

modifiable: none

Entity reference or id

=item entityName

modifiable: none

Entity name

=item entityType

modifiable: none

Entity type

=item catalog

modifiable: none

Catalog reference or id

=item catalogName

modifiable: none

Catalog name

=item ownerName

modifiable: none

Owner name

=item owner

modifiable: none

Owner reference or id

=item isPublished

modifiable: none

Shows whether it is in published catalog

=item vdc

modifiable: none

vDC reference or id

=item vdcName

modifiable: none

vDC name

=item isVdcEnabled

modifiable: none

Shows whether vDC is enabled

=item org

modifiable: none

Organization reference or id

=item creationDate

modifiable: none

Creation date

=item isExpired

modifiable: none

Shows whether it is expired

=item status

modifiable: none

Status

=item name

modifiable: none

name

=back

=cut


1;
