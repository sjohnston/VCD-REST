package VCD::Schema::VCloud_v1_5::IpsecVpnRemotePeerType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::IpsecVpnManagedPeerType';

has_xml 'VcdUrl' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VcdOrganization' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VcdUsername' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Gives more details of remote peer end point.



=head1 ATTRIBUTES

=over

=item VcdUrl

=head1 API

Available Since API: 1.5

modifiable: always

REST API URL of the peer cloud.

=item VcdOrganization

=head1 API

Available Since API: 1.5

modifiable: always

Organization which contains the peer network.

=item VcdUsername

=head1 API

Available Since API: 1.5

modifiable: always

Username to be used to log in to peer cloud.

=back

=cut


1;
