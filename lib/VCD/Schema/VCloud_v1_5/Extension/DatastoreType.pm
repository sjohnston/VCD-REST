package VCD::Schema::VCloud_v1_5::Extension::DatastoreType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'VimObjectRef' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Enabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Busy' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ThresholdYellowGb' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::DatastoreType_ThresholdYellowGb]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ThresholdRedGb' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::DatastoreType_ThresholdRedGb]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SystemMessages' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'DatastoreFsType' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VcDisplayName' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'MountHost' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'MountDirectory' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'TotalCapacityMb' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'TotalCapacityGb' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'UsedCapacityMb' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'UsedCapacityGb' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'UsedCapacityPercent' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ProvisionedSpaceMb' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ProvisionedSpaceGb' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'RequestedStorageMb' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'RequestedStorageGb' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'vimPropertyPageUrl' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::DatastoreType_ThresholdYellowGb;
use VCD::Schema::VCloud_v1_5::Extension::DatastoreType_ThresholdRedGb;
use VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType;


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Represents datastore object.

=head1 API

Available Since API: 1.5



=head1 ATTRIBUTES

=over

=item VimObjectRef

modifiable: none

The VIM object reference to this datastore.

=item Enabled

Indicates whether the datastore is enabled.

=item Busy

modifiable: none

Indicates whether the datastore is busy.

=item ThresholdYellowGb

modifiable: always

Minimum free space, in GB, to trigger a yellow status for the datastore.

=item ThresholdRedGb

modifiable: always

Minimum free space, in GB, to trigger a red status for the datastore.

=item SystemMessages

modifiable: none

System messages for the datastore.

=item DatastoreFsType

modifiable: none

Filesystem type of the datastore.

=item VcDisplayName

modifiable: none

vCenter display name of the datastore.

=item MountHost

modifiable: none

Datastore mount host.

=item MountDirectory

modifiable: none

Datastore mountpoint.

=item TotalCapacityMb

modifiable: none

Total capacity, in MB, of the datastore.

=item TotalCapacityGb

modifiable: none

Total capacity, in GB, of the datastore.

=item UsedCapacityMb

modifiable: none

Used capacity, in MB, of the datastore.

=item UsedCapacityGb

modifiable: none

Used capacity, in GB, of the datastore.

=item UsedCapacityPercent

modifiable: none

Used capacity of the datastore, as a percentage.

=item ProvisionedSpaceMb

modifiable: none

Provisioned capacity, in MB, of the datastore.

=item ProvisionedSpaceGb

modifiable: none

Provisioned capacity, in GB, of the datastore.

=item RequestedStorageMb

modifiable: none

Requested storage, in MB, for all the vCloud Director VMs on the datastore.

=item RequestedStorageGb

modifiable: none

Requested storage, in GB, for all the vCloud Director VMs on the datastore.

=item vimPropertyPageUrl

modifiable: none

URL to the VIM property page of the datastore host.

=back

=cut


1;
