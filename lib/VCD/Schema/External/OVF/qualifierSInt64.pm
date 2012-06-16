package VCD::Schema::External::OVF::qualifierSInt64;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::cimLong';

has_xml_attr 'qualifier' => (is => 'rw', xml_name => 'qualifier', xml_namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');





=head1 ATTRIBUTES

=over

=item qualifier

=back

=cut


1;
