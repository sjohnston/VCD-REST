package VCD::Schema::VCloud_v1_5::QueryResultAdminVAppTemplateRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'org' => (is => 'ro', xml_name => 'org', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'ownerName' => (is => 'ro', xml_name => 'ownerName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'owner' => (is => 'ro', xml_name => 'owner', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isPublished' => (is => 'ro', xml_name => 'isPublished', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vdc' => (is => 'ro', xml_name => 'vdc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vdcName' => (is => 'ro', xml_name => 'vdcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isVdcEnabled' => (is => 'ro', xml_name => 'isVdcEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'catalog' => (is => 'ro', xml_name => 'catalog', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'catalogName' => (is => 'ro', xml_name => 'catalogName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'catalogItem' => (is => 'ro', xml_name => 'catalogItem', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'creationDate' => (is => 'ro', xml_name => 'creationDate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isGoldMaster' => (is => 'ro', xml_name => 'isGoldMaster', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isEnabled' => (is => 'ro', xml_name => 'isEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isExpired' => (is => 'ro', xml_name => 'isExpired', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isDeployed' => (is => 'ro', xml_name => 'isDeployed', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a AdminVAppTemplate vCloud query as a record.



=head1 ATTRIBUTES

=over

=item org

modifiable: none

Organization reference or id

=item ownerName

modifiable: none

Owner name

=item owner

modifiable: none

Owner reference or id

=item isPublished

modifiable: none

Shows whether it is in published catalog

=item name

modifiable: none

name

=item vdc

modifiable: none

vDC reference or id

=item vdcName

modifiable: none

vDC name

=item isVdcEnabled

modifiable: none

Shows whether vDC is enabled

=item catalog

modifiable: none

Catalog reference or id

=item catalogName

modifiable: none

Catalog name

=item catalogItem

modifiable: none

Catalog item reference or id

=item creationDate

modifiable: none

Creation date

=item isBusy

modifiable: none

Shows whether it is busy

=item isGoldMaster

modifiable: none

Shows whether it is marked as a gold master

=item isEnabled

modifiable: none

Shows whether it is enabled

=item isExpired

modifiable: none

Shows whether it is expired

=item isDeployed

modifiable: none

Shows whether it is deployed

=item status

modifiable: none

Status

=back

=cut


1;
