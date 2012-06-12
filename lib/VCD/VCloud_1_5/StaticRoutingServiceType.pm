package VCD::VCloud_1_5::StaticRoutingServiceType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::NetworkServiceType';

has_xml 'StaticRoute' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::StaticRouteType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::StaticRouteType;


=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents Static Routing network service.



=head1 ATTRIBUTES

=over

=item StaticRoute

=head1 API

Available Since API: 1.5

modifiable: always

Details of each Static Route.

=back

=cut


1;
