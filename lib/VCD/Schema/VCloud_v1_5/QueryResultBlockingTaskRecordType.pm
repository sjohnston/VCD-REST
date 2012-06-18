package VCD::Schema::VCloud_v1_5::QueryResultBlockingTaskRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'operationName' => (is => 'ro', xml_name => 'operationName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'owner' => (is => 'ro', xml_name => 'owner', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'ownerName' => (is => 'ro', xml_name => 'ownerName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'originatingOrgName' => (is => 'ro', xml_name => 'originatingOrgName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'originatingOrg' => (is => 'ro', xml_name => 'originatingOrg', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'creationDate' => (is => 'ro', xml_name => 'creationDate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'expirationTime' => (is => 'ro', xml_name => 'expirationTime', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'timeoutAction' => (is => 'ro', xml_name => 'timeoutAction', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'task' => (is => 'ro', xml_name => 'task', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'jobStatus' => (is => 'ro', xml_name => 'jobStatus', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a BlockingTask vCloud query as a record.



=head1 ATTRIBUTES

=over

=item status

modifiable: none

Status

=item operationName

modifiable: none

Operation name

=item owner

modifiable: none

Owner reference or id

=item ownerName

modifiable: none

Owner name

=item originatingOrgName

modifiable: none

Originating organization name

=item originatingOrg

modifiable: none

Organization reference or id

=item creationDate

modifiable: none

Creation date

=item expirationTime

modifiable: none

Expiration time

=item timeoutAction

modifiable: none

Time action

=item task

modifiable: none

task reference or id

=item jobStatus

modifiable: none

Job status

=back

=cut


1;
