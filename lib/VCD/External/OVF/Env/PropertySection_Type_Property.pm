package VCD::External::OVF::Env::PropertySection_Type_Property;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'key' => (is => 'rw', xml_name => 'key', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');
has_xml_attr 'value' => (is => 'rw', xml_name => 'value', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');





=head1 ATTRIBUTES

=over

=item key

=item value

=back

=cut


1;
