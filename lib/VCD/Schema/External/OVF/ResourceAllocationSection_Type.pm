package VCD::Schema::External::OVF::ResourceAllocationSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::Section_Type';

has_xml 'Item' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::RASD_Type]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::Schema::External::OVF::RASD_Type;


=head1 DESCRIPTION

Resource constraints on a VirtualSystemCollection



=head1 ATTRIBUTES

=over

=item Item

=back

=cut


1;
