package VCD::Schema::VCloud_v1_5::ProviderVdcCapacityType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'Units' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Allocation' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Total' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Used' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Overhead' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents resource capacity in a provider vDC.



=head1 ATTRIBUTES

=over

=item Units

modifiable: none

Units in which the capacity is measured. For CPU devices, this is always
Megahertz, represented by the string MHz.

=item Allocation

modifiable: none

Number of Units that have been allocated to consumers.

=item Total

=head1 API

Available Since API: 1.0

modifiable: none

Total number of Units that can be allocated to all consumers.

=item Used

=head1 API

Available Since API: 1.0

modifiable: none

Percentage of the allocation in use.

=item Overhead

=head1 API

Available Since API: 1.0

modifiable: none

Number of Units allocated to vShield Manager virtual machines provisioned
from this provider vDC.

=back

=cut


1;
