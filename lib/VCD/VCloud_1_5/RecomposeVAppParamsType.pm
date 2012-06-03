package VCD::VCloud_1_5::RecomposeVAppParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ComposeVAppParamsType';

has_xml 'CreateItem' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::VmType]', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DeleteItem' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

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
