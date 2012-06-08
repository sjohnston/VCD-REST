package VCD::VCloud_1_5::ComputeCapacityType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Cpu' => (is => 'rw', isa => 'VCD::VCloud_1_5::CapacityWithUsageType', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Memory' => (is => 'rw', isa => 'VCD::VCloud_1_5::CapacityWithUsageType', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::CapacityWithUsageType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a compute capacity with units.



=head1 ATTRIBUTES

=over

=item Cpu

modifiable: always

CPU capacity usage.

=item Memory

modifiable: always

Memory capacity usage.

=back

=cut


1;
