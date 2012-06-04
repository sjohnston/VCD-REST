package VCD::VCloud_1_5::VmType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::AbstractVAppType';

has_xml 'needsCustomization' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'needsCustomization');
has_xml 'VAppScopedLocalId' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Environment' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/ovf/environment/1');

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