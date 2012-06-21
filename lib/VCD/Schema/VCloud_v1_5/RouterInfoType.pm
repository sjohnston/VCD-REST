package VCD::Schema::VCloud_v1_5::RouterInfoType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'ExternalIp' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item ExternalIp

modifiable: none

Specifies the external IP of the router. Applicable for NAT Routed / Fenced
networks only.

=back

=cut


1;
