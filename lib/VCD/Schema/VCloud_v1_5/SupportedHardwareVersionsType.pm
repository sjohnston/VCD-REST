package VCD::Schema::VCloud_v1_5::SupportedHardwareVersionsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'SupportedHardwareVersion' => (is => 'ro', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

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
