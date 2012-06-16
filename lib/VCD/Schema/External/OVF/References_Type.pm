package VCD::Schema::External::OVF::References_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'File' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::File_Type]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::Schema::External::OVF::File_Type;


=head1 DESCRIPTION

Type for list of external resources



=head1 ATTRIBUTES

=over

=item File

=back

=cut


1;
