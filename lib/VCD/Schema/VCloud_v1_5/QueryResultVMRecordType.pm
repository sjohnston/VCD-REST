package VCD::Schema::VCloud_v1_5::QueryResultVMRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'containerName' => (is => 'ro', xml_name => 'containerName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'container' => (is => 'ro', xml_name => 'container', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vdc' => (is => 'ro', xml_name => 'vdc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isVAppTemplate' => (is => 'ro', xml_name => 'isVAppTemplate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isDeleted' => (is => 'ro', xml_name => 'isDeleted', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'guestOs' => (is => 'ro', xml_name => 'guestOs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfCpus' => (is => 'ro', xml_name => 'numberOfCpus', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'memoryMB' => (is => 'ro', xml_name => 'memoryMB', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isDeployed' => (is => 'ro', xml_name => 'isDeployed', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isPublished' => (is => 'ro', xml_name => 'isPublished', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'catalogName' => (is => 'ro', xml_name => 'catalogName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'hardwareVersion' => (is => 'ro', xml_name => 'hardwareVersion', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isInMaintenanceMode' => (is => 'ro', xml_name => 'isInMaintenanceMode', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a VM vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item containerName

modifiable: none

Vapp name or Vapp template name

=item container

modifiable: none

Vapp or Vapp template

=item vdc

modifiable: none

vDC reference or id

=item isVAppTemplate

modifiable: none

Shows whether the VM belongs to VApp or VAppTemplate

=item isDeleted

modifiable: none

Shows whether it is deleted

=item guestOs

modifiable: none

Guest operating system

=item numberOfCpus

modifiable: none

Number of CPUs

=item memoryMB

modifiable: none

Memory in MB

=item status

modifiable: none

Status

=item isBusy

modifiable: none

Shows whether it is busy

=item isDeployed

modifiable: none

Shows whether it is deployed

=item isPublished

modifiable: none

Shows whether it is in published catalog

=item catalogName

modifiable: none

Catalog name

=item hardwareVersion

modifiable: none

Hardware version

=item isInMaintenanceMode

modifiable: none

Shows whether it is in maintenance mode

=back

=cut


1;
