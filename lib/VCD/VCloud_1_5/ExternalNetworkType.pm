package VCD::VCloud_1_5::ExternalNetworkType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::NetworkType';

has_xml 'ProviderInfo' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Admin representation of external network.



=head1 ATTRIBUTES

=over

=item ProviderInfo

modifiable: none

Shows VC server and port group moref used for external network.

=back

=cut


1;