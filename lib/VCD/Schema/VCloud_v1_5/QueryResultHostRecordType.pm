package VCD::Schema::VCloud_v1_5::QueryResultHostRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isEnabled' => (is => 'ro', xml_name => 'isEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isDeleted' => (is => 'ro', xml_name => 'isDeleted', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isPrepared' => (is => 'ro', xml_name => 'isPrepared', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isSupported' => (is => 'ro', xml_name => 'isSupported', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isHung' => (is => 'ro', xml_name => 'isHung', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isPendingUpgrade' => (is => 'ro', xml_name => 'isPendingUpgrade', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'state' => (is => 'ro', xml_name => 'state', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'osVersion' => (is => 'ro', xml_name => 'osVersion', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isCrossHostEnabled' => (is => 'ro', xml_name => 'isCrossHostEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfVMs' => (is => 'ro', xml_name => 'numberOfVMs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isInMaintenanceMode' => (is => 'ro', xml_name => 'isInMaintenanceMode', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vc' => (is => 'ro', xml_name => 'vc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vcName' => (is => 'ro', xml_name => 'vcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a Host vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item isEnabled

modifiable: none

Shows whether it is enabled

=item isDeleted

modifiable: none

Shows whether it is deleted

=item isBusy

modifiable: none

Shows whether it is busy

=item isPrepared

modifiable: none

Shows whether it is prepared

=item isSupported

modifiable: none

Shows whether it is supported

=item isHung

modifiable: none

Shows whether it is hung

=item isPendingUpgrade

modifiable: none

Shows whether it is pending for upgarde

=item state

modifiable: none

State

=item osVersion

modifiable: none

Operating system version

=item isCrossHostEnabled

modifiable: none

Shows whether it is cross-host enabled

=item numberOfVMs

modifiable: none

Number of VMs

=item isInMaintenanceMode

modifiable: none

Shows whether it is in maintenance mode

=item vc

modifiable: none

Virtual center reference or id

=item vcName

modifiable: none

Vitual center name

=back

=cut


1;
