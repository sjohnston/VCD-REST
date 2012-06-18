package VCD::Schema::VCloud_v1_5::QueryResultMediaRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'ownerName' => (is => 'ro', xml_name => 'ownerName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'catalogName' => (is => 'ro', xml_name => 'catalogName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isPublished' => (is => 'ro', xml_name => 'isPublished', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vdc' => (is => 'ro', xml_name => 'vdc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vdcName' => (is => 'ro', xml_name => 'vdcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'org' => (is => 'ro', xml_name => 'org', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'creationDate' => (is => 'ro', xml_name => 'creationDate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storageB' => (is => 'ro', xml_name => 'storageB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'owner' => (is => 'ro', xml_name => 'owner', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'catalog' => (is => 'ro', xml_name => 'catalog', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'catalogItem' => (is => 'ro', xml_name => 'catalogItem', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a Media vCloud query as a record.



=head1 ATTRIBUTES

=over

=item ownerName

modifiable: none

Owner name

=item catalogName

modifiable: none

Catalog name

=item isPublished

modifiable: none

Shows whether it is in published catalog

=item name

modifiable: none

Media name

=item vdc

modifiable: none

vDC reference or id

=item vdcName

modifiable: none

vDC name

=item org

modifiable: none

Organization reference or id

=item creationDate

modifiable: none

Creation date

=item isBusy

modifiable: none

Shows whether it is busy

=item storageB

modifiable: none

Media storage in Bytes

=item owner

modifiable: none

Owner reference or id

=item catalog

modifiable: none

Catalog reference or id

=item catalogItem

modifiable: none

Catalog item reference or id

=item status

modifiable: none

Media status

=back

=cut


1;
