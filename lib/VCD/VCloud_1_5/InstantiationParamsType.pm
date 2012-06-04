package VCD::VCloud_1_5::InstantiationParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a list of ovf:Section to configure for instantiating a VApp.



=head1 ATTRIBUTES

=over

=item Section

modifiable: always

An ovf:Section to configure for instantiation.

=back

=cut


1;