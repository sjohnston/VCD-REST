package VCD::Schema::VCloud_v1_5::Extension::LicensingReportType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml_attr 'productSerialNumber' => (is => 'ro', xml_name => 'productSerialNumber', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml_attr 'reportDate' => (is => 'ro', xml_name => 'reportDate', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml_attr 'signature' => (is => 'ro', xml_is_optional => '1', xml_name => 'signature', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Sample' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::Extension::LicensingReportSampleType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a read-only licensing metric report.



=head1 ATTRIBUTES

=over

=item productSerialNumber

modifiable: none

Product serial number.

=item reportDate

modifiable: none

End of the period for which the report is generated.

=item signature

modifiable: none

Cryptographic signature of the report.

=item Sample

modifiable: none

One licensing metric sample captured in the report.

=back

=cut


1;
