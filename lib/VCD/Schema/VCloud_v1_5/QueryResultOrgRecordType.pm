package VCD::Schema::VCloud_v1_5::QueryResultOrgRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isReadOnly' => (is => 'ro', xml_name => 'isReadOnly', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isEnabled' => (is => 'ro', xml_name => 'isEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'deployedVMQuota' => (is => 'ro', xml_name => 'deployedVMQuota', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storedVMQuota' => (is => 'ro', xml_name => 'storedVMQuota', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'displayName' => (is => 'ro', xml_name => 'displayName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'canPublishCatalogs' => (is => 'ro', xml_name => 'canPublishCatalogs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfCatalogs' => (is => 'ro', xml_name => 'numberOfCatalogs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfVdcs' => (is => 'ro', xml_name => 'numberOfVdcs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfVApps' => (is => 'ro', xml_name => 'numberOfVApps', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfGroups' => (is => 'ro', xml_name => 'numberOfGroups', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a Org vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

Organization name

=item isReadOnly

modifiable: none

Shows whether organization is read only

=item isEnabled

modifiable: none

Shows whether it is enabled

=item deployedVMQuota

modifiable: none

Deployed VM quota

=item storedVMQuota

modifiable: none

Stored VM Quota

=item displayName

modifiable: none

Display name

=item canPublishCatalogs

modifiable: none

Shows whether users from the organization can publish catalogs

=item numberOfCatalogs

modifiable: none

Number of catalogs

=item numberOfVdcs

modifiable: none

Number of vDCs

=item numberOfVApps

modifiable: none

Number of vApps

=item numberOfGroups

modifiable: none

Number of groups

=back

=cut


1;
