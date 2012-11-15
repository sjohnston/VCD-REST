package VCD::Schema::External::OVF::VirtualSystemCollectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::ContentType';

has_xml 'Content' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

A collection of Content.



=head1 ATTRIBUTES

=over

=item Content

=back

=cut


1;
