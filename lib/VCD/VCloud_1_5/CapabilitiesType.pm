package VCD::VCloud_1_5::CapabilitiesType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'SupportedHardwareVersions' => (is => 'ro', isa => 'Maybe[VCD::VCloud_1_5::SupportedHardwareVersionsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::SupportedHardwareVersionsType;


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
