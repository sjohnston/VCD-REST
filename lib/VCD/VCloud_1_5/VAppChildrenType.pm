package VCD::VCloud_1_5::VAppChildrenType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'VApp' => (is => 'ro', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Vm' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::VmType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::VmType;


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
