package VCD::Schema::VCloud_v1_5::QueryResultType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml_attr 'name' => (is => 'ro', xml_is_optional => '1', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'pageSize' => (is => 'ro', xml_is_optional => '1', xml_name => 'pageSize', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'page' => (is => 'ro', xml_is_optional => '1', xml_name => 'page', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents a result from a vCloud query.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

The name of the query that generated the query results

=item pageSize

modifiable: none

The size of the pages into which the full result list is split.

=item page

modifiable: none

The presented page of the full result list.

=back

=cut


1;
