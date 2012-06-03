package VCD::External::OVF::VirtualSystemCollection_Type;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Content_Type';

has_xml 'Content' => (is => 'rw', isa => 'ArrayRef[Str]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 DESCRIPTION

A collection of Content.



=head1 ATTRIBUTES

=over

=item Content

=back

=cut


1;
