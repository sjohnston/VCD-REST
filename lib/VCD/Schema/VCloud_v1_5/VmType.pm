package VCD::Schema::VCloud_v1_5::VmType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::AbstractVAppType';

has_xml_attr 'needsCustomization' => (is => 'ro', xml_is_optional => '1', xml_name => 'needsCustomization', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppScopedLocalId' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Environment' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');



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

=back

=cut


1;
