package VCD::Schema::VCloud_v1_5::Extension::ServerType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'Username' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Password' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Url' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Information needed to connect to a vSphere or a vShield manager server.



=head1 ATTRIBUTES

=over

=item Username

modifiable: always

User name to connect to the server.

=item Password

modifiable: always

Cleartext password to connect to the server.

=item Url

modifiable: always

URL of the server.

=back

=cut


1;
