package VCD::Schema::VCloud_v1_5::Extension::LicensingReportSampleType_ManagedServerMetrics;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'ManagedServer' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::Extension::LicensingManagedServerType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::LicensingManagedServerType;


__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item ManagedServer

modifiable: none

One managed server metric.

=back

=cut


1;
