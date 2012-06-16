package VCD::Schema::External::OVF::NetworkSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::Section_Type';

has_xml 'Network' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::NetworkSection_Type_Network]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::Schema::External::OVF::NetworkSection_Type_Network;


=head1 DESCRIPTION

Descriptions of logical networks used within the package



=head1 ATTRIBUTES

=over

=item Network

=back

=cut


1;