package VCD::Schema::VCloud_v1_5::Extension::LicensingReportSampleType_VirtualMachineMetrics;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'VirtualMachine' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::Extension::LicensingVirtualMachineType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item VirtualMachine

modifiable: none

One virtual machine metric.

=back

=cut


1;
