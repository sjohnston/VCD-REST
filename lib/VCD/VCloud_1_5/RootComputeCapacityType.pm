package VCD::VCloud_1_5::RootComputeCapacityType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Cpu' => (is => 'ro', isa => 'Maybe[VCD::VCloud_1_5::ProviderVdcCapacityType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Memory' => (is => 'ro', isa => 'Maybe[VCD::VCloud_1_5::ProviderVdcCapacityType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsElastic' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsHA' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::ProviderVdcCapacityType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents compute capacity with units.



=head1 ATTRIBUTES

=over

=item Cpu

modifiable: none

Read-only indicator of CPU capacity available in the provider vDC.

=item Memory

modifiable: none

Read-only indicator of memory capacity available in the provider vDC.

=item IsElastic

modifiable: none

Read-only indicator. True if compute capacity can grow or shrink based on
demand.

=item IsHA

modifiable: none

Read-only indicator. True if compute capacity is highly available.

=back

=cut


1;
