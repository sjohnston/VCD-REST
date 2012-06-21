package VCD::Schema::VCloud_v1_5::Extension::LicenseType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'SerialNumber' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'LicensedVMCount' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ExpirationDate' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ValidSerial' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Expired' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'LicenseMetricsInfo' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::LicenseMetricsInfoType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

This is used by the API to update and retrieve site license specific
information.



=head1 ATTRIBUTES

=over

=item SerialNumber

modifiable: always

The site wide serial number string.

=item LicensedVMCount

modifiable: none

The number of VMs this product is licensed for.

=item ExpirationDate

modifiable: none

The expiration date for this serial number. This is a read only field. for
the API client. The license manager will set this field appropriately.

=item ValidSerial

modifiable: none

Flag indicating whether the provided serial is valid. This is a read only
field for the API client. The license manager will set this flag
appropriately.

=item Expired

modifiable: none

Flag indicating whether the provided serial number has expired. This is a
read-only field for the API. The license manager will set this flag
appropriately.

=item LicenseMetricsInfo

Report of License usage metrics.

=back

=cut


1;
