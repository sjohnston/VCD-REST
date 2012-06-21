package VCD::Schema::VCloud_v1_5::VAppNetworkType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::NetworkType';

has_xml_attr 'deployed' => (is => 'ro', xml_is_optional => '1', xml_name => 'deployed', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

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
