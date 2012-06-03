package VCD::VCloud_1_5::VAppType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::AbstractVAppType';

has_xml 'ovfDescriptorUploaded' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'ovfDescriptorUploaded');
has_xml 'Owner' => (is => 'ro', isa => 'VCD::VCloud_1_5::OwnerType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'InMaintenanceMode' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Children' => (is => 'ro', isa => 'VCD::VCloud_1_5::VAppChildrenType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a vApp.



=head1 ATTRIBUTES

=over

=item ovfDescriptorUploaded

modifiable: none

Read-only indicator that the OVF descriptor has been uploaded.

=item Owner

modifiable: none

vApp owner.

=item InMaintenanceMode

True if this vApp is in maintenance mode. Prevents users from changing vApp
metadata.

=item Children

modifiable: none

Shows VM children of a vApp.

=back

=cut


1;
