package VCD::Schema::External::OVF::StartupSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::SectionType';

has_xml 'Item' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::StartupSectionTypeItem]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Specifies the order in which entities in a VirtualSystemCollection are
powered on and shut down



=head1 ATTRIBUTES

=over

=item Item

=back

=cut


1;
