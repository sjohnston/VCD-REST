package VCD::Schema::VCloud_v1_5::QueryResultVirtualCenterRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'url' => (is => 'ro', xml_name => 'url', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'userName' => (is => 'ro', xml_name => 'userName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isEnabled' => (is => 'ro', xml_name => 'isEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vcVersion' => (is => 'ro', xml_name => 'vcVersion', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'status' => (is => 'ro', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vsmIP' => (is => 'ro', xml_name => 'vsmIP', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'uuid' => (is => 'ro', xml_name => 'uuid', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a VirtualCenter vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item url

modifiable: none

Url

=item userName

modifiable: none

User name

=item isEnabled

modifiable: none

Shows whether it is enabled

=item vcVersion

modifiable: none

Virtual center version

=item status

modifiable: none

Status

=item vsmIP

modifiable: none

vShield IP address

=item isBusy

modifiable: none

Shows whether it is busy

=item uuid

modifiable: none

Uuid

=back

=cut


1;
