package VCD::Schema::VCloud_v1_5::QueryResultProviderVdcResourcePoolRelationRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'resourcePoolMoref' => (is => 'ro', xml_name => 'resourcePoolMoref', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'cpuReservationLimitMhz' => (is => 'ro', xml_name => 'cpuReservationLimitMhz', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'cpuReservationAllocationMhz' => (is => 'ro', xml_name => 'cpuReservationAllocationMhz', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isEnabled' => (is => 'ro', xml_name => 'isEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'memoryReservationLimitMB' => (is => 'ro', xml_name => 'memoryReservationLimitMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'memoryReservationAllocationMB' => (is => 'ro', xml_name => 'memoryReservationAllocationMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isPrimary' => (is => 'ro', xml_name => 'isPrimary', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'providerVdc' => (is => 'ro', xml_name => 'providerVdc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vc' => (is => 'ro', xml_name => 'vc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vcName' => (is => 'ro', xml_name => 'vcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfVMs' => (is => 'ro', xml_name => 'numberOfVMs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a ProviderVdcResourcePoolRelation vCloud query
as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item resourcePoolMoref

modifiable: none

Resource pool managed object reference

=item cpuReservationLimitMhz

modifiable: none

Cpu reservation limit in Mhz

=item cpuReservationAllocationMhz

modifiable: none

Cpu reservation allocation in Mhz

=item isEnabled

modifiable: none

Shows whether it is enabled

=item memoryReservationLimitMB

modifiable: none

Memory reservation limit in MB

=item memoryReservationAllocationMB

modifiable: none

Memory reservation allocation in MB

=item isPrimary

modifiable: none

Shows whether it is primary

=item providerVdc

modifiable: none

provider vDC reference or id

=item vc

modifiable: none

Virtual center reference or id

=item vcName

modifiable: none

Vitual center name

=item numberOfVMs

modifiable: none

Number of VMs

=back

=cut


1;
