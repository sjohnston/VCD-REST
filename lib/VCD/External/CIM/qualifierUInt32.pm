package VCD::External::CIM::qualifierUInt32;

use Moose;

use VCD::HasXML;

extends 'VCD::External::CIM::cimUnsignedInt';

has_xml_attr 'qualifier' => (is => 'rw', xml_name => 'qualifier', xml_namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');





=head1 ATTRIBUTES

=over

=item qualifier

=back

=cut


1;
