package VCD::VCloud_1_5::InstantiateOvfParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VAppCreationParamsType';

has_xml_attr 'transferFormat' => (is => 'rw', xml_namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'transferFormat');
has_xml 'AllEULAsAccepted' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 DESCRIPTION

Represents vApp instantiation from OVF parameters



=head1 ATTRIBUTES

=over

=item transferFormat

=item AllEULAsAccepted

=back

=cut


1;
