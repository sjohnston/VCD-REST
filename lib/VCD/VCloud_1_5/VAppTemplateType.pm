package VCD::VCloud_1_5::VAppTemplateType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceEntityType';

has_xml 'ovfDescriptorUploaded' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'ovfDescriptorUploaded');
has_xml 'goldMaster' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'goldMaster');
has_xml 'Owner' => (is => 'ro', isa => 'VCD::VCloud_1_5::OwnerType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Children' => (is => 'ro', isa => 'VCD::VCloud_1_5::VAppTemplateChildrenType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Section' => (is => 'ro', isa => 'ArrayRef[Str]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'VAppScopedLocalId' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

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
