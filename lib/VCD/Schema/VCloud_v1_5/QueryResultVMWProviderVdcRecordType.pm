package VCD::Schema::VCloud_v1_5::QueryResultVMWProviderVdcRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isEnabled' => (is => 'ro', xml_name => 'isEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isDeleted' => (is => 'ro', xml_name => 'isDeleted', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vcpuRatingMhz' => (is => 'ro', xml_name => 'vcpuRatingMhz', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'cpuAllocationMhz' => (is => 'ro', xml_name => 'cpuAllocationMhz', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'cpuLimitMhz' => (is => 'ro', xml_name => 'cpuLimitMhz', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'cpuUsedMhz' => (is => 'ro', xml_name => 'cpuUsedMhz', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'memoryAllocationMB' => (is => 'ro', xml_name => 'memoryAllocationMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'memoryLimitMB' => (is => 'ro', xml_name => 'memoryLimitMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'memoryUsedMB' => (is => 'ro', xml_name => 'memoryUsedMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storageAllocationMB' => (is => 'ro', xml_name => 'storageAllocationMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storageLimitMB' => (is => 'ro', xml_name => 'storageLimitMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storageUsedMB' => (is => 'ro', xml_name => 'storageUsedMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfDatastores' => (is => 'ro', xml_name => 'numberOfDatastores', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfVdcs' => (is => 'ro', xml_name => 'numberOfVdcs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a VMWProviderVdc vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item isEnabled

modifiable: none

Shows whether it is enabled

=item isDeleted

modifiable: none

Shows whether it is deleted

=item vcpuRatingMhz

modifiable: none

vCpu rating in Mhz

=item cpuAllocationMhz

modifiable: none

Cpu allocation in Mhz

=item cpuLimitMhz

modifiable: none

Cpu limit in Mhz

=item cpuUsedMhz

modifiable: none

Cpu used in Mhz

=item memoryAllocationMB

modifiable: none

Memory allocation in MB

=item memoryLimitMB

modifiable: none

Memory limit in MB

=item memoryUsedMB

modifiable: none

Memory used in MB

=item storageAllocationMB

modifiable: none

Storage allocation in MB

=item storageLimitMB

modifiable: none

Storage limit in MB

=item storageUsedMB

modifiable: none

Storage used in MB

=item numberOfDatastores

modifiable: none

Number of datastores

=item numberOfVdcs

modifiable: none

Number of vDCs

=item isBusy

modifiable: none

Shows whether it is busy

=item status

modifiable: none

Status

=back

=cut


1;
