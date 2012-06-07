package VCD::External::OVF::OperatingSystemSection_Type;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml_attr 'id' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'id');
has_xml_attr 'version' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'version');
has_xml 'Description' => (is => 'rw', isa => 'Maybe[VCD::External::OVF::Msg_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::Msg_Type;


=head1 DESCRIPTION

Specification of the operating system installed in the guest



=head1 ATTRIBUTES

=over

=item id

Identifier defined by the CIM_OperatingSystem.OsType enumeration

=item version

Version defined by the CIM_OperatingSystem.Version field

=item Description

=back

=cut


1;
