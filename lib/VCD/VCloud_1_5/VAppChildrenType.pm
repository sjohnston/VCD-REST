package VCD::VCloud_1_5::VAppChildrenType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'VApp' => (is => 'ro', isa => 'ArrayRef[Str]', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Vm' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::VmType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents vApp children.



=head1 ATTRIBUTES

=over

=item VApp

modifiable: none

Reserved. Unimplemented.

=item Vm

modifiable: none

Child VM.

=back

=cut


1;
