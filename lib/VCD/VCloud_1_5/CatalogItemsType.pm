package VCD::VCloud_1_5::CatalogItemsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'CatalogItem' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a list of catalog item references.



=head1 ATTRIBUTES

=over

=item CatalogItem

modifiable: none

Reference to a catalog item.

=back

=cut


1;
