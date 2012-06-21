package VCD::Schema::External::OVF::Environment_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'id' => (is => 'rw', xml_is_optional => '1', xml_name => 'id', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');
has_xml 'Entity' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::Entity_Type]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Type for root OVF environment



=head1 ATTRIBUTES

=over

=item id

Identifier matching recipient of this environment

=item Section

Entity independent meta-data sections

=item Entity

Meta-data particular to a given entity

=back

=cut


1;
