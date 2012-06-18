package VCD::Schema::VCloud_v1_5::Extension::VimServerType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::Extension::ServerType';

has_xml 'IsEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'IsConnected' => (is => 'ro', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ShieldManagerHost' => (is => 'ro', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ShieldManagerUserName' => (is => 'ro', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Uuid' => (is => 'ro', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents vCenter server information.



=head1 ATTRIBUTES

=over

=item IsEnabled

modifiable: always

True if the vCenter server is enabled for use with vCloud Director.

=item IsConnected

=head1 API

Available Since API: 1.0

modifiable: none

True if the vCenter server is connected.

=item ShieldManagerHost

=head1 API

Available Since API: 1.0

modifiable: none

vShield manager IP address or fully qualified domain name.

=item ShieldManagerUserName

=head1 API

Available Since API: 1.0

modifiable: none

vShield manager user name.

=item Uuid

=head1 API

Available Since API: 1.5

modifiable: none

The instance UUID property of the vCenter server.

=back

=cut


1;
