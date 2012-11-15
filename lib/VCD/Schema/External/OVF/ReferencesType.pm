package VCD::Schema::External::OVF::ReferencesType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'File' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::FileType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Type for list of external resources



=head1 ATTRIBUTES

=over

=item File

=back

=cut


1;
