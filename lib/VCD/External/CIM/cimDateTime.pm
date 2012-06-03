package VCD::External::CIM::cimDateTime;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'CIM_DateTime' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');
has_xml 'Interval' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');
has_xml 'Date' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');
has_xml 'Time' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');
has_xml 'Datetime' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');



=head1 ATTRIBUTES

=over

=item CIM_DateTime

=item Interval

=item Date

=item Time

=item Datetime

=back

=cut


1;
