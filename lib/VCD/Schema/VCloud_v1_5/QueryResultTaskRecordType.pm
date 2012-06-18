package VCD::Schema::VCloud_v1_5::QueryResultTaskRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'org' => (is => 'ro', xml_name => 'org', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'orgName' => (is => 'ro', xml_name => 'orgName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'startDate' => (is => 'ro', xml_name => 'startDate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'endDate' => (is => 'ro', xml_name => 'endDate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'ownerName' => (is => 'ro', xml_name => 'ownerName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'object' => (is => 'ro', xml_name => 'object', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'objectType' => (is => 'ro', xml_name => 'objectType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'objectName' => (is => 'ro', xml_name => 'objectName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a Task vCloud query as a record.



=head1 ATTRIBUTES

=over

=item org

modifiable: none

Organization reference or id

=item orgName

modifiable: none

Organization name

=item name

modifiable: none

name

=item startDate

modifiable: none

Start date

=item endDate

modifiable: none

End date

=item status

modifiable: none

Status

=item ownerName

modifiable: none

Owner name

=item object

modifiable: none

Object

=item objectType

modifiable: none

Object type

=item objectName

modifiable: none

Object name

=back

=cut


1;
