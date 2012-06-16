package VCD::Schema::VCloud_v1_5::VAppTemplateChildrenType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'Vm' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::VAppTemplateType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::VAppTemplateType;


__PACKAGE__->meta->make_immutable;

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
