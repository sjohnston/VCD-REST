package VCD::VCloud_1_5::ComposeVAppParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VAppCreationParamsType';

has_xml_attr 'linkedClone' => (is => 'rw', xml_namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'linkedClone');
has_xml 'SourcedItem' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::SourcedCompositionItemParamType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AllEULAsAccepted' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::SourcedCompositionItemParamType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents vApp composition parameters.



=head1 ATTRIBUTES

=over

=item linkedClone

modifiable: always

Reserved. Unimplemented.

=item SourcedItem

modifiable: always

Composition item. One of: vApp, vAppTemplate, Vm.

=item AllEULAsAccepted

modifiable: always

Used to confirm acceptance of all EULAs in a vApp template. Instantiation
fails if this element is missing, empty, or set to false and one or more
EulaSection elements are present.

=back

=cut


1;
