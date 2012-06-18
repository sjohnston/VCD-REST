package VCD::Schema::VCloud_v1_5::Extension::RegisterVimServerParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'VimServer' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimServerType]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ShieldManager' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::ShieldManagerType]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::ShieldManagerType;
use VCD::Schema::VCloud_v1_5::Extension::VimServerType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents parameters to register a vCenter server.



=head1 ATTRIBUTES

=over

=item VimServer

modifiable: always

vCenter administrator credentials. Required for register, modify.

=item ShieldManager

modifiable: always

vShield manager administrator credentials. Required for register, modify.

=back

=cut


1;
