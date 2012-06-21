package VCD::Schema::VCloud_v1_5::QueryResultAdminUserRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'org' => (is => 'ro', xml_name => 'org', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'fullName' => (is => 'ro', xml_name => 'fullName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isEnabled' => (is => 'ro', xml_name => 'isEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfDeployedVMs' => (is => 'ro', xml_name => 'numberOfDeployedVMs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'deployedVMQuota' => (is => 'ro', xml_name => 'deployedVMQuota', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfStoredVMs' => (is => 'ro', xml_name => 'numberOfStoredVMs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storedVMQuota' => (is => 'ro', xml_name => 'storedVMQuota', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isLdapUser' => (is => 'ro', xml_name => 'isLdapUser', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'deployedVMQuotaRank' => (is => 'ro', xml_name => 'deployedVMQuotaRank', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'storedVMQuotaRank' => (is => 'ro', xml_name => 'storedVMQuotaRank', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a AdminUser vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item org

modifiable: none

Organization reference or id

=item fullName

modifiable: none

Full name

=item isEnabled

modifiable: none

Shows whether it is enabled

=item numberOfDeployedVMs

modifiable: none

Number of deployed VMs

=item deployedVMQuota

modifiable: none

Deployed VM quota

=item numberOfStoredVMs

modifiable: none

Number of stored VMs

=item storedVMQuota

modifiable: none

Stored VM Quota

=item isLdapUser

modifiable: none

Shows if the user was imported from LDAP

=item deployedVMQuotaRank

modifiable: none

Deployed VM quota rank

=item storedVMQuotaRank

modifiable: none

Stored VM Quota rank

=back

=cut


1;
