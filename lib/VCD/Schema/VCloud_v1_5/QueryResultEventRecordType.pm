package VCD::Schema::VCloud_v1_5::QueryResultEventRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'eventType' => (is => 'ro', xml_name => 'eventType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'timeStamp' => (is => 'ro', xml_name => 'timeStamp', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'eventStatus' => (is => 'ro', xml_name => 'eventStatus', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'userName' => (is => 'ro', xml_name => 'userName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'orgName' => (is => 'ro', xml_name => 'orgName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'entity' => (is => 'ro', xml_name => 'entity', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'entityType' => (is => 'ro', xml_name => 'entityType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'entityName' => (is => 'ro', xml_name => 'entityName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a Event vCloud query as a record.



=head1 ATTRIBUTES

=over

=item eventType

modifiable: none

Event type

=item timeStamp

modifiable: none

Time stamp

=item eventStatus

modifiable: none

Event status

=item userName

modifiable: none

User name

=item orgName

modifiable: none

Organization name

=item entity

modifiable: none

Entity reference or id

=item entityType

modifiable: none

Entity type

=item entityName

modifiable: none

Entity name

=back

=cut


1;
