package VCD::Schema::VCloud_v1_5::Extension::LicenseMetricsInfoType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'vRAM' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'vCPU' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'RunningVMs' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'PhysicalMemoryUsed' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'PhysicalSocketCount' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AvailablePhysicalMemory' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'LastUpdate' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Report of License usage metrics.



=head1 ATTRIBUTES

=over

=item vRAM

modifiable: none

Virtual memory allocation.

=item vCPU

modifiable: none

Number of virtual processors used.

=item RunningVMs

modifiable: none

Number of VMs.

=item PhysicalMemoryUsed

modifiable: none

Physical memory used during the observation period.

=item PhysicalSocketCount

modifiable: none

Network sockets use count.

=item AvailablePhysicalMemory

modifiable: none

Total physical memory used during the observation period.

=item LastUpdate

modifiable: none

Date that the report was collected.

=back

=cut


1;
