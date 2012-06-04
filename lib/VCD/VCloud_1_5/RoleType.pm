package VCD::VCloud_1_5::RoleType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityType';

has_xml 'RightReferences' => (is => 'rw', isa => 'VCD::VCloud_1_5::RightReferencesType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Particular role that has a collection of rights.



=head1 ATTRIBUTES

=over

=item RightReferences

modifiable: always

Container for zero or more ReferenceType to right.

=back

=cut


1;