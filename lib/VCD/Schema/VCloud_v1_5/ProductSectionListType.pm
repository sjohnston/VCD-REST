package VCD::Schema::VCloud_v1_5::ProductSectionListType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'ProductSection' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');



__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Essentially a container with a list of product sections.



=head1 ATTRIBUTES

=over

=item ProductSection

=back

=cut


1;
