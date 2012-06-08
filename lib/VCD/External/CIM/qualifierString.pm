package VCD::External::CIM::qualifierString;

use Moose;

use VCD::HasXML;

extends 'VCD::External::CIM::cimString';

has_xml_attr 'qualifier' => (is => 'rw', xml_name => 'qualifier', xml_namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');





=head1 ATTRIBUTES

=over

=item qualifier

=back

=cut


1;
