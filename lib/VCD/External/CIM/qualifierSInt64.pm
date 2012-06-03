package VCD::External::CIM::qualifierSInt64;

use Moose;

use VCD::HasXML;

extends 'VCD::External::CIM::cimLong';

has_xml 'qualifier' => (is => 'rw', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common', xml_name => 'qualifier');



=head1 ATTRIBUTES

=over

=item qualifier

=back

=cut


1;
