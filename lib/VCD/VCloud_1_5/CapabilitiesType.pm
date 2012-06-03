package VCD::VCloud_1_5::CapabilitiesType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'SupportedHardwareVersions' => (is => 'ro', isa => 'VCD::VCloud_1_5::SupportedHardwareVersionsType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Collection of supported hardware capabilities.



=head1 ATTRIBUTES

=over

=item SupportedHardwareVersions

modifiable: none

Read only list of supported VM hardware versions for this vDC.

=back

=cut


1;
