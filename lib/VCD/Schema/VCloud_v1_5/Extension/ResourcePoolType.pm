package VCD::Schema::VCloud_v1_5::Extension::ResourcePoolType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'MoRef' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VimObjectType' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'DataStoreRefs' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::VimObjectRefsType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

vSphere resource pool information.



=head1 ATTRIBUTES

=over

=item MoRef

=head1 API

Available Since API: 1.0

modifiable: none

The vSphere managed object reference of the resource pool.

=item VimObjectType

=head1 API

Available Since API: 1.0

modifiable: none

The vCenter server that provides the resources in this pool.

=item DataStoreRefs

modifiable: none

vSphere datastores accessible from this resource pool.

=back

=cut


1;
