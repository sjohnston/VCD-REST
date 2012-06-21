package VCD::Schema::VCloud_v1_5::Extension::ResourcePoolListType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'ResourcePool' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::Extension::ResourcePoolType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a list of available resource pools that have not been assigned
to any vDCs (provider or org).



=head1 ATTRIBUTES

=over

=item ResourcePool

modifiable: none

Free resource pool information.

=back

=cut


1;
