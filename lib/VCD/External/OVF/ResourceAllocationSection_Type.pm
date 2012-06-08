package VCD::External::OVF::ResourceAllocationSection_Type;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml 'Item' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::RASD_Type]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::RASD_Type;


=head1 DESCRIPTION

Resource constraints on a VirtualSystemCollection



=head1 ATTRIBUTES

=over

=item Item

=back

=cut


1;
