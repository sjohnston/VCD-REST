package VCD::Schema::VCloud_v1_5::StaticRouteType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'Name' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Network' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NextHopIp' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Interface' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item Name

=head1 API

Available Since API: 1.5

modifiable: always

Name for the static route.

=item Network

=head1 API

Available Since API: 1.5

modifiable: always

Network specification in CIDR.

=item NextHopIp

=head1 API

Available Since API: 1.5

modifiable: always

IP Address of Next Hop router/gateway.

=item Interface

=head1 API

Available Since API: 1.5

modifiable: always

Interface to use for static routing. Internal and External are the
supported values.

=back

=cut


1;
