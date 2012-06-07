package VCD::VCloud_1_5::OwnerType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'User' => (is => 'ro', isa => 'VCD::VCloud_1_5::ReferenceType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::ReferenceType;


=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the owner of this entity.



=head1 ATTRIBUTES

=over

=item User

=head1 API

Available Since API: 0.9

modifiable: none

Reference to the user who is the owner of this entity.

=back

=cut


1;
