package VCD::Schema::VCloud_v1_5::OrgNetworkType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::NetworkType';

has_xml 'NetworkPool' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AllowedExternalIpAddresses' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::IpAddressesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::IpAddressesType;
use VCD::Schema::VCloud_v1_5::ReferenceType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents an organization network in the vCloud model.



=head1 ATTRIBUTES

=over

=item NetworkPool

modifiable: none

Network Pool from which this organization network is created. Not present
if it is bridged to an external network.

=item AllowedExternalIpAddresses

modifiable: none

Optional set of IP addresses that this organization network is limited to
using for purposes of NAT.

=back

=cut


1;
