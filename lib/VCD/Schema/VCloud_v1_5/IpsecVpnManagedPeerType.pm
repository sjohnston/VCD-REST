package VCD::Schema::VCloud_v1_5::IpsecVpnManagedPeerType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::IpsecVpnPeerType';

has_xml 'Id' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Name' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Gives more details of peer end point.



=head1 ATTRIBUTES

=over

=item Id

=head1 API

Available Since API: 1.5

modifiable: always

ID of peer network.

=item Name

=head1 API

Available Since API: 1.5

modifiable: always

Name of the peer network.

=back

=cut


1;
