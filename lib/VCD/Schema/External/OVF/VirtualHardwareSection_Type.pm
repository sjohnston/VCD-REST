package VCD::Schema::External::OVF::VirtualHardwareSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::Section_Type';

has_xml_attr 'id' => (is => 'rw', xml_is_optional => '1', xml_name => 'id', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'transport' => (is => 'rw', xml_is_optional => '1', xml_name => 'transport', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'System' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::VSSD_Type]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Item' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::RASD_Type]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

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
