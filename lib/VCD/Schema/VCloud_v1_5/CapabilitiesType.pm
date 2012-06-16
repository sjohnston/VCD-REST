package VCD::Schema::VCloud_v1_5::CapabilitiesType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'SupportedHardwareVersions' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::SupportedHardwareVersionsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::SupportedHardwareVersionsType;


__PACKAGE__->meta->make_immutable;

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
