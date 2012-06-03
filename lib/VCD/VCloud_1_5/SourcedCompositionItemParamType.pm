package VCD::VCloud_1_5::SourcedCompositionItemParamType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'sourceDelete' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'sourceDelete');
has_xml 'Source' => (is => 'rw', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppScopedLocalId' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'InstantiationParams' => (is => 'rw', isa => 'VCD::VCloud_1_5::InstantiationParamsType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NetworkAssignment' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::NetworkAssignmentType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a composition item.



=head1 ATTRIBUTES

=over

=item sourceDelete

=head1 API

Available Since API: 1.0

modifiable: always

Delete the source item after composition is complete.

=item Source

modifiable: always

Reference to a vApp, vApp template or VM to include in the composition.

=item VAppScopedLocalId

=head1 API

Available Since API: 1.0

modifiable: always

If the source reference is to a VM, this value provides a unique identifier
for the VM in the scope of the composed vApp.

=item InstantiationParams

modifiable: always

If the source reference is a VM this can include any of the following OVF
sections: VirtualHardwareSection, OperatingSystemSection,
NetworkConnectionSection, GuestCustomizationSection.

=item NetworkAssignment

modifiable: always

This specifies how the network connections of child VM elements are mapped
to vApp networks in the parent. This is valid only if the VM is specified
directly as source.

=back

=cut


1;
