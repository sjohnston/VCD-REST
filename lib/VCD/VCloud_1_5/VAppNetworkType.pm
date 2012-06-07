package VCD::VCloud_1_5::VAppNetworkType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::NetworkType';

has_xml_attr 'deployed' => (is => 'ro', xml_namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'deployed');



=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents a vApp network.



=head1 ATTRIBUTES

=over

=item deployed

=head1 API

Available Since API: 1.5

modifiable: none

True if the network is deployed.

=back

=cut


1;
