package VCD::External::OVF::qualifierBoolean;

use Moose;

use VCD::Schema;

extends 'VCD::External::OVF::cimBoolean';

has_xml_attr 'qualifier' => (is => 'rw', xml_name => 'qualifier', xml_namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');





=head1 ATTRIBUTES

=over

=item qualifier

=back

=cut


1;