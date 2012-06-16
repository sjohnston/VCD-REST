package VCD::Schema::VCloud_v1_5::RecomposeVAppParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ComposeVAppParamsType';

has_xml 'CreateItem' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::VmType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DeleteItem' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::VmType;
use VCD::Schema::VCloud_v1_5::ReferenceType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents vApp re-composition parameters.



=head1 ATTRIBUTES

=over

=item CreateItem

modifiable: none

A VM to be added during composition.

=item DeleteItem

modifiable: always

Reference to a VM to be deleted during composition.

=back

=cut


1;
