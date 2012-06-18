package VCD::Schema::VCloud_v1_5::Extension::PortGroupPoolType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::Extension::VMWNetworkPoolType';

has_xml 'PortGroupRefs' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefsType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VimServer' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'UsedNetworksCount' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::VimObjectRefsType;
use VCD::Schema::VCloud_v1_5::ReferenceType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a network pool backed by one or more vSphere port groups.



=head1 ATTRIBUTES

=over

=item PortGroupRefs

modifiable: always

References to the vSphere port groups that support this network pool.
Required at least one port group moref, for modify and create.

=item VimServer

modifiable: always

Reference to the vSphere which hosts the port groups. Required VC server on
which the port groups exist, for modify and create.

=item UsedNetworksCount

modifiable: none

This is a read-only indication of how many networks in this pool are in
use.

=back

=cut


1;
