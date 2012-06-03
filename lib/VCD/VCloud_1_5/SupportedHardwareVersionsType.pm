package VCD::VCloud_1_5::SupportedHardwareVersionsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'SupportedHardwareVersion' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::SupportedHardwareVersionType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents a list of supported VM hardware versions.



=head1 ATTRIBUTES

=over

=item SupportedHardwareVersion

modifiable: none

Supported hardware version.

=back

=cut


1;
