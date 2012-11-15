package VCD::Schema::External::OVF::ResourceAllocationSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::SectionType';

has_xml 'Item' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::RASDType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Resource constraints on a VirtualSystemCollection



=head1 ATTRIBUTES

=over

=item Item

=back

=cut


1;
