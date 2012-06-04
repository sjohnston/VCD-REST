package VCD::VCloud_1_5::IpsecVpnManagedPeerType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::IpsecVpnPeerType';

has_xml 'Id' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Name' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

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