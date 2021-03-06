package VCD::Schema::VCloud_v1_5::NatOneToOneBasicRuleType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'MappingMode' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ExternalIpAddress' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'InternalIpAddress' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents the NAT basic rule for one to one mapping of internal and
external IP addresses from a network.



=head1 ATTRIBUTES

=over

=item MappingMode

modifiable: always

One of: automatic (map IP addresses automatically), manual (map IP
addresses manually using ExternalIpAddress and InternalIpAddress)

=item ExternalIpAddress

modifiable: always

External IP address to map.

=item InternalIpAddress

modifiable: always

Internal IP address to map.

=back

=cut


1;
