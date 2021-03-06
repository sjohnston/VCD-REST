package VCD::Schema::VCloud_v1_5::VAppType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::AbstractVAppType';

has_xml_attr 'ovfDescriptorUploaded' => (is => 'ro', xml_is_optional => '1', xml_name => 'ovfDescriptorUploaded', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Owner' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OwnerType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'InMaintenanceMode' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'StartupSection' => (is => 'ro', isa => 'Maybe[VCD::Schema::External::OVF::StartupSectionType]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Children' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::VAppChildrenType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5',
    handles => {
        vm_list  => 'list',
        vm_find  => 'find',
        vm_count => 'count',
        vm_sort  => 'sort',
    },
);


__PACKAGE__->meta->make_immutable;

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
