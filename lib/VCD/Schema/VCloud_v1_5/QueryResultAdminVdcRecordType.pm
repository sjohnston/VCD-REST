package VCD::Schema::VCloud_v1_5::QueryResultAdminVdcRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isEnabled' => (is => 'ro', xml_name => 'isEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'cpuAllocationMhz' => (is => 'ro', xml_name => 'cpuAllocationMhz', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'cpuLimitMhz' => (is => 'ro', xml_name => 'cpuLimitMhz', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'cpuUsedMhz' => (is => 'ro', xml_name => 'cpuUsedMhz', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'memoryAllocationMB' => (is => 'ro', xml_name => 'memoryAllocationMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'memoryLimitMB' => (is => 'ro', xml_name => 'memoryLimitMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'memoryUsedMB' => (is => 'ro', xml_name => 'memoryUsedMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storageAllocationMB' => (is => 'ro', xml_name => 'storageAllocationMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storageLimitMB' => (is => 'ro', xml_name => 'storageLimitMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storageUsedMB' => (is => 'ro', xml_name => 'storageUsedMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'providerVdcName' => (is => 'ro', xml_name => 'providerVdcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'providerVdc' => (is => 'ro', xml_name => 'providerVdc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'orgName' => (is => 'ro', xml_name => 'orgName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'org' => (is => 'ro', xml_name => 'org', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfVApps' => (is => 'ro', xml_name => 'numberOfVApps', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfMedia' => (is => 'ro', xml_name => 'numberOfMedia', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfVAppTemplates' => (is => 'ro', xml_name => 'numberOfVAppTemplates', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isSystemVdc' => (is => 'ro', xml_name => 'isSystemVdc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'networkPool' => (is => 'ro', xml_name => 'networkPool', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a AdminVdc vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item isEnabled

modifiable: none

Shows whether it is enabled

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

=item providerVdcName

modifiable: none

provider vDC name

=item providerVdc

modifiable: none

provider vDC reference or id

=item orgName

modifiable: none

Organization name

=item org

modifiable: none

Organization reference or id

=item numberOfVApps

modifiable: none

Number of vApps

=item numberOfMedia

modifiable: none

Number of media

=item numberOfVAppTemplates

modifiable: none

Number of vApp templates

=item isSystemVdc

modifiable: none

Shows wheter it is a system vDC

=item isBusy

modifiable: none

Shows whether it is busy

=item status

modifiable: none

Status

=item networkPool

modifiable: none

Network pool reference or id

=back

=cut


1;
