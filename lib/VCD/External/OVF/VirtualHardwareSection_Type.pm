package VCD::External::OVF::VirtualHardwareSection_Type;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml_attr 'id' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'id');
has_xml_attr 'transport' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'transport');
has_xml 'System' => (is => 'rw', isa => 'Maybe[VCD::External::OVF::VSSD_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Item' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::RASD_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::VSSD_Type;
use VCD::External::OVF::RASD_Type;


=head1 DESCRIPTION

Specifies virtual hardware requirements for a virtual machine



=head1 ATTRIBUTES

=over

=item id

Unique identifier of this VirtualHardwareSection (within a VirtualSystem)

=item transport

=item System

=item Item

=back

=cut


1;
