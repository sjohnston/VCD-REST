package VCD::Schema::VCloud_v1_5::ContainerType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml_attr 'name' => (is => 'ro', xml_is_optional => '1', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'page' => (is => 'ro', xml_is_optional => '1', xml_name => 'page', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'pageSize' => (is => 'ro', xml_is_optional => '1', xml_name => 'pageSize', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'total' => (is => 'ro', xml_is_optional => '1', xml_name => 'total', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



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
