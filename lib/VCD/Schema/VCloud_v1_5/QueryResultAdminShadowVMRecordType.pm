package VCD::Schema::VCloud_v1_5::QueryResultAdminShadowVMRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'isPublished' => (is => 'ro', xml_name => 'isPublished', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'primaryVmName' => (is => 'ro', xml_name => 'primaryVmName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'shadowVApp' => (is => 'ro', xml_name => 'shadowVApp', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'primaryVAppTemplate' => (is => 'ro', xml_name => 'primaryVAppTemplate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'primaryVAppName' => (is => 'ro', xml_name => 'primaryVAppName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'datastoreName' => (is => 'ro', xml_name => 'datastoreName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vcName' => (is => 'ro', xml_name => 'vcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isDeleted' => (is => 'ro', xml_name => 'isDeleted', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'primaryVMOwner' => (is => 'ro', xml_name => 'primaryVMOwner', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'primaryVM' => (is => 'ro', xml_name => 'primaryVM', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'primaryVMCatalog' => (is => 'ro', xml_name => 'primaryVMCatalog', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'org' => (is => 'ro', xml_name => 'org', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a AdminShadowVM vCloud query as a record.



=head1 ATTRIBUTES

=over

=item isPublished

modifiable: none

Shows whether it is in published catalog

=item name

modifiable: none

name

=item primaryVmName

modifiable: none

Primary VM name

=item shadowVApp

modifiable: none

Shadow vApp reference or id

=item primaryVAppTemplate

modifiable: none

Primary vApp template reference or id

=item primaryVAppName

modifiable: none

Primary vApp name

=item datastoreName

modifiable: none

Datastore name

=item vcName

modifiable: none

Vitual center name

=item isDeleted

modifiable: none

Shows whether it is deleted

=item status

modifiable: none

Status

=item isBusy

modifiable: none

Shows whether it is busy

=item primaryVMOwner

modifiable: none

Primary VM owner reference or id

=item primaryVM

modifiable: none

Primary VM refernce or id

=item primaryVMCatalog

modifiable: none

Primary VM catalog reference or id

=item org

modifiable: none

Organization reference or id

=back

=cut


1;
