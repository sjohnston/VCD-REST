package VCD::Schema::VCloud_v1_5::Extension::PrepareHostParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'Username' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Password' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Parameters for preparing an ESX/ESXi host.



=head1 ATTRIBUTES

=over

=item Username

modifiable: always

The user name to use for host preparation login.

=item Password

modifiable: always

The cleartext password to use for host preparation login.

=back

=cut


1;
