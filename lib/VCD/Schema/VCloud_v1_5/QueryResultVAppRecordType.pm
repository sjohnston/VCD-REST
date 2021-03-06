package VCD::Schema::VCloud_v1_5::QueryResultVAppRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vdc' => (is => 'ro', xml_name => 'vdc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vdcName' => (is => 'ro', xml_name => 'vdcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isPublic' => (is => 'ro', xml_name => 'isPublic', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isEnabled' => (is => 'ro', xml_name => 'isEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'creationDate' => (is => 'ro', xml_name => 'creationDate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'ownerName' => (is => 'ro', xml_name => 'ownerName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isDeployed' => (is => 'ro', xml_name => 'isDeployed', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isInMaintenanceMode' => (is => 'ro', xml_name => 'isInMaintenanceMode', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a VApp vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

vApp name

=item vdc

modifiable: none

vDC reference or id

=item vdcName

modifiable: none

vDC name

=item isPublic

modifiable: none

Shows whether it is public

=item isEnabled

modifiable: none

Shows whether it is enabled

=item isBusy

modifiable: none

Shows whether it is busy

=item creationDate

modifiable: none

Creation date

=item status

modifiable: none

Status

=item ownerName

modifiable: none

Owner name

=item isDeployed

modifiable: none

Shows whether it is deployed

=item isInMaintenanceMode

modifiable: none

Shows whether it is in maintenance mode

=back

=cut


1;
