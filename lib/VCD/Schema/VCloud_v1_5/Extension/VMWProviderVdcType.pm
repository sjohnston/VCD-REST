package VCD::Schema::VCloud_v1_5::Extension::VMWProviderVdcType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ProviderVdcType';

has_xml 'DataStoreRefs' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefsType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ResourcePoolRefs' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefsType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VimServer' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'HostReferences' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VMWHostReferencesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'HighestSupportedHardwareVersion' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Extension representation of provider vDC type.



=head1 ATTRIBUTES

=over

=item DataStoreRefs

=head1 API

Available Since API: 0.9

modifiable: always

vSphere datastores backing this provider vDC.

=item ResourcePoolRefs

=head1 API

Available Since API: 1.5

modifiable: always

Resource pools backing this provider vDC. On create, you must specify a
resource pool that is not used by (and is not the child of a resource pool
used by) any other provider vDC. On modify, this element is required for
schema validation, but its contents cannot be changed.

=item VimServer

=head1 API

Available Since API: 0.9

modifiable: always

The vCenter server that provides the resource pools and datastores. A valid
reference is required on create. On modify, this element is required for
schema validation, but its contents cannot be changed.

=item HostReferences

modifiable: none

Shows all hosts which are connected to VC server.

=item HighestSupportedHardwareVersion

modifiable: always

The highest supported virtual hardware version in the provider vDC. The two
possible values are: vmx-07 -- virtual hardware version 7. vmx-08 --
virtual hardware version 8.

=back

=cut


1;
