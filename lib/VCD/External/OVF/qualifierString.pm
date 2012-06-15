package VCD::External::OVF::qualifierString;

use Moose;

use VCD::Schema;

extends 'VCD::External::OVF::cimString';

has_xml_attr 'qualifier' => (is => 'rw', xml_name => 'qualifier', xml_namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');





=head1 ATTRIBUTES

=over

=item qualifier

=back

=cut


1;
