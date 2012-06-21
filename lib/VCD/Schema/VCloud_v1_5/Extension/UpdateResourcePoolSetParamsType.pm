package VCD::Schema::VCloud_v1_5::Extension::UpdateResourcePoolSetParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ParamsType';

has_xml 'AddItem' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'DeleteItem' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents update parameters for resource pools backing provider vdc



=head1 ATTRIBUTES

=over

=item AddItem

modifiable: always

Reference to a secondary resource pool to add to the provider vDC resource
pool set.

=item DeleteItem

modifiable: always

Reference to a secondary resource pool to delete from the provider vDC
resource pool set.

=back

=cut


1;
