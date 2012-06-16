package VCD::Schema::External::OVF::Entity_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'id' => (is => 'rw', xml_name => 'id', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');



=head1 DESCRIPTION

Container of sections for a specific entity



=head1 ATTRIBUTES

=over

=item id

Entity identifier

=item Section

=back

=cut


1;
