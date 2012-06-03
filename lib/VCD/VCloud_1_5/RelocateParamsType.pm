package VCD::VCloud_1_5::RelocateParamsType;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'Datastore' => (is => 'rw', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Parameters to be used for vm relocation.



=head1 ATTRIBUTES

=over

=item Datastore

modifiable: always

Reference to destination datastore.

=back

=cut


1;
