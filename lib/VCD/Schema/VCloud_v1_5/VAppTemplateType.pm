package VCD::Schema::VCloud_v1_5::VAppTemplateType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceEntityType';

has_xml_attr 'ovfDescriptorUploaded' => (is => 'ro', xml_is_optional => '1', xml_name => 'ovfDescriptorUploaded', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'goldMaster' => (is => 'rw', xml_is_optional => '1', xml_name => 'goldMaster', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Owner' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OwnerType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Children' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::VAppTemplateChildrenType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Section' => (is => 'ro', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'VAppScopedLocalId' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a vApp template.



=head1 ATTRIBUTES

=over

=item ovfDescriptorUploaded

modifiable: none

Read only flag to indicate that the ovf descriptor is uploaded.

=item goldMaster

modifiable: always

=head1 API

Available Since API: 1.5

Attribute to specify if template is gold master, the default is false.

=item Owner

modifiable: none

vAppTemplate owner.

=item Children

modifiable: none

Contains VMs which are in this vApp template.

=item Section

modifiable: none

Contains ovf sections for vApp template.

=item VAppScopedLocalId

=head1 API

Available Since API: 1.0

modifiable: always

The vApp template scoped local ID.

=back

=cut


1;
