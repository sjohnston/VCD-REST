package VCD::Schema::VCloud_v1_5::QueryResultResourcePoolRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'moref' => (is => 'ro', xml_name => 'moref', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isDeleted' => (is => 'ro', xml_name => 'isDeleted', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vc' => (is => 'ro', xml_name => 'vc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vcName' => (is => 'ro', xml_name => 'vcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a ResourcePool vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item moref

modifiable: none

Managed object reference

=item isDeleted

modifiable: none

Shows whether it is deleted

=item vc

modifiable: none

Virtual center reference or id

=item vcName

modifiable: none

Vitual center name

=back

=cut


1;
