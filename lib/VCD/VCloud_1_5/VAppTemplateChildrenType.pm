package VCD::VCloud_1_5::VAppTemplateChildrenType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Vm' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::VAppTemplateType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::VAppTemplateType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents vApp template children.



=head1 ATTRIBUTES

=over

=item Vm

=head1 API

Available Since API: 1.0

modifiable: none

Content of a VM in the vApp template.

=back

=cut


1;
