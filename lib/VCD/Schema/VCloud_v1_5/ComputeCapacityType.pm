package VCD::Schema::VCloud_v1_5::ComputeCapacityType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'Cpu' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::CapacityWithUsageType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Memory' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::CapacityWithUsageType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

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
