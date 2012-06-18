package VCD::Schema::VCloud_v1_5::QueryResultDatastoreProviderVdcRelationRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'datastoreType' => (is => 'ro', xml_name => 'datastoreType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isEnabled' => (is => 'ro', xml_name => 'isEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isDeleted' => (is => 'ro', xml_name => 'isDeleted', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storageUsedMB' => (is => 'ro', xml_name => 'storageUsedMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storageMB' => (is => 'ro', xml_name => 'storageMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'provisionedStorageMB' => (is => 'ro', xml_name => 'provisionedStorageMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'requestedStorageMB' => (is => 'ro', xml_name => 'requestedStorageMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vc' => (is => 'ro', xml_name => 'vc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vcName' => (is => 'ro', xml_name => 'vcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'moref' => (is => 'ro', xml_name => 'moref', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'providerVdc' => (is => 'ro', xml_name => 'providerVdc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'datastore' => (is => 'ro', xml_name => 'datastore', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a DatastoreProviderVdcRelation vCloud query as
a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item datastoreType

modifiable: none

Datastore type

=item isEnabled

modifiable: none

Shows whether it is enabled

=item isDeleted

modifiable: none

Shows whether it is deleted

=item storageUsedMB

modifiable: none

Storage used in MB

=item storageMB

modifiable: none

Storage in MB

=item provisionedStorageMB

modifiable: none

Provisioned storage in MB

=item requestedStorageMB

modifiable: none

Requested storage in MB

=item vc

modifiable: none

Virtual center reference or id

=item vcName

modifiable: none

Vitual center name

=item moref

modifiable: none

Managed object reference

=item providerVdc

modifiable: none

provider vDC reference or id

=item datastore

modifiable: none

Datastore reference or id

=back

=cut


1;
