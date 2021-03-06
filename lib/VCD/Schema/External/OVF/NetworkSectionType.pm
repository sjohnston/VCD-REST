package VCD::Schema::External::OVF::NetworkSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::SectionType';

has_xml 'Network' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::NetworkSectionTypeNetwork]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Descriptions of logical networks used within the package



=head1 ATTRIBUTES

=over

=item Network

=back

=cut


1;
