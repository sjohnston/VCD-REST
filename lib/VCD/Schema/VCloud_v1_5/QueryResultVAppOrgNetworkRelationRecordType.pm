package VCD::Schema::VCloud_v1_5::QueryResultVAppOrgNetworkRelationRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'org' => (is => 'ro', xml_name => 'org', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'orgNetwork' => (is => 'ro', xml_name => 'orgNetwork', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'orgNetworkName' => (is => 'ro', xml_name => 'orgNetworkName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'configurationType' => (is => 'ro', xml_name => 'configurationType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'ownerName' => (is => 'ro', xml_name => 'ownerName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a VAppOrgNetworkRelation vCloud query as a
record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item org

modifiable: none

Organization reference or id

=item orgNetwork

modifiable: none

Network reference or id

=item orgNetworkName

modifiable: none

Network name

=item configurationType

modifiable: none

Configuration Type

=item status

modifiable: none

Status

=item ownerName

modifiable: none

Owner name

=back

=cut


1;
