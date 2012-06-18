package VCD::Schema::VCloud_v1_5::QueryResultAdminVAppNetworkRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'org' => (is => 'ro', xml_name => 'org', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isIpScopeInherited' => (is => 'ro', xml_name => 'isIpScopeInherited', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'gateway' => (is => 'ro', xml_name => 'gateway', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'netmask' => (is => 'ro', xml_name => 'netmask', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'dns1' => (is => 'ro', xml_name => 'dns1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'dns2' => (is => 'ro', xml_name => 'dns2', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'dnsSuffix' => (is => 'ro', xml_name => 'dnsSuffix', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vApp' => (is => 'ro', xml_name => 'vApp', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vappName' => (is => 'ro', xml_name => 'vappName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a AdminVAppNetwork vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item org

modifiable: none

Organization reference or id

=item isIpScopeInherited

modifiable: none

Shows whether IP scope is inherited

=item gateway

modifiable: none

Gateway

=item netmask

modifiable: none

Netmask

=item dns1

modifiable: none

Primary DNS

=item dns2

modifiable: none

Secondary DNS

=item dnsSuffix

modifiable: none

DNS suffix

=item vApp

modifiable: none

VApp reference or id

=item vappName

modifiable: none

Vapp name

=item isBusy

modifiable: none

Shows whether it is busy

=back

=cut


1;
