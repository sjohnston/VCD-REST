package VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'VimServerRef' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'MoRef' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VimObjectType' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::ReferenceType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents the moref and the type of a vSphere object.



=head1 ATTRIBUTES

=over

=item VimServerRef

modifiable: none

The vCenter server reference.

=item MoRef

modifiable: none

Managed object reference of the object.

=item VimObjectType

modifiable: none

The vSphere type of the object. One of: RESOURCE_POOL (The object is a
vSphere resource pool.), DATASTORE (The object is a vSphere datastore.),
HOST (The object is an ESX/ESXi host.), VIRTUAL_MACHINE (The object is a
vSphere VM.), VIRTUAL_APP (The object is a vSphere vApp.), NETWORK (The
object is a vSphere network.), DV_PORTGROUP (The object is a vSphere
distributed virtual portgroup.), DV_SWITCH (The object is a Sphere
distributed virtual switch.)

=back

=cut


1;
