package VCD::VCloud_1_5::ContainerType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'name' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'name');
has_xml 'page' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'page');
has_xml 'pageSize' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'pageSize');
has_xml 'total' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'total');

=head1 DESCRIPTION

Container for query result sets.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

Query name that generated this result set.

=item page

modifiable: none

Page of the result set that this container holds. The first page is page
number 1.

=item pageSize

modifiable: none

Page size, as a number of records or references.

=item total

modifiable: none

Total number of records or references in the container.

=back

=cut


1;
