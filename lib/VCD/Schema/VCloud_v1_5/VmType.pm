package VCD::Schema::VCloud_v1_5::VmType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::AbstractVAppType';

has_xml_attr 'needsCustomization' => (is => 'ro', xml_is_optional => '1', xml_name => 'needsCustomization', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppScopedLocalId' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Environment' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');
has_xml 'VirtualHardwareSection' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::VirtualHardwareSectionType]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'OperatingSystemSection' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::OperatingSystemSectionType]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'NetworkConnectionSection' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NetworkConnectionSectionType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'GuestCustomizationSection' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::GuestCustomizationSectionType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'RuntimeInfoSection' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::RuntimeInfoSectionType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a VM.



=head1 ATTRIBUTES

=over

=item needsCustomization

modifiable: none

Flag to signify that the VM needs customization.

=item VAppScopedLocalId

=head1 API

Available Since API: 1.0

modifiable: none

VM ID in scope of vApp.

=item Environment

modifiable: always

OVF environment section

=item VirtualHardwareSection

Element substitutable for Section since VirtualHardwareSection_Type is a
derivation of Section_Type

=item OperatingSystemSection

Element substitutable for Section since OperatingSystemSection_Type is a
derivation of Section_Type

=item NetworkConnectionSection

=item GuestCustomizationSection

=item RuntimeInfoSection

=back

=cut


1;
