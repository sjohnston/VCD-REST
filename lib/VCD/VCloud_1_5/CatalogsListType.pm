package VCD::VCloud_1_5::CatalogsListType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'CatalogReference' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::ReferenceType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Container for ReferenceType elements that reference catalogs.



=head1 ATTRIBUTES

=over

=item CatalogReference

modifiable: none

ReferenceType element that reference a catalog.

=back

=cut


1;
