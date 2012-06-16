package VCD::Schema::VCloud_v1_5::RoleType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'RightReferences' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::RightReferencesType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::RightReferencesType;


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
