package VCD::External::OVF::Env::Environment_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'id' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1', xml_name => 'id');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');
has_xml 'Entity' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::Env::Entity_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');

use VCD::External::OVF::Env::Entity_Type;


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
