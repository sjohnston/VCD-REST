package VCD::External::OVF::PropertySection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::External::OVF::Section_Type';

has_xml 'Property' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::PropertySection_Type_Property]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');

use VCD::External::OVF::PropertySection_Type_Property;


=head1 DESCRIPTION

Key/value pairs of assigned properties for an entity



=head1 ATTRIBUTES

=over

=item Property

=back

=cut


1;