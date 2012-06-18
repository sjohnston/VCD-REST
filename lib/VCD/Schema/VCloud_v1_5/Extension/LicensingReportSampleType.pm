package VCD::Schema::VCloud_v1_5::Extension::LicensingReportSampleType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'observationDate' => (is => 'ro', xml_name => 'observationDate', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ManagedServerMetrics' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::LicensingReportSampleType_ManagedServerMetrics]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VirtualMachineMetrics' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::LicensingReportSampleType_VirtualMachineMetrics]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::LicensingReportSampleType_VirtualMachineMetrics;
use VCD::Schema::VCloud_v1_5::Extension::LicensingReportSampleType_ManagedServerMetrics;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a single licensing data collection point.



=head1 ATTRIBUTES

=over

=item observationDate

modifiable: none

The date when the metrics were observed.

=item ManagedServerMetrics

modifiable: none

Observed managed server metrics.

=item VirtualMachineMetrics

modifiable: none

Observed virtual machine metrics.

=back

=cut


1;
