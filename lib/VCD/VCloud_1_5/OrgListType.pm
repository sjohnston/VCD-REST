package VCD::VCloud_1_5::OrgListType;

use Moose;

use VCD::HasXML;
use VCD::VCloud_1_5::ReferenceType;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'Org' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a list of organizations.



=head1 ATTRIBUTES

=over

=item Org

modifiable: none

Reference to an organization.

=back

=cut


1;