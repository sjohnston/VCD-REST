package VCD::Schema::VCloud_v1_5::QueryResultPortgroupRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'moref' => (is => 'ro', xml_name => 'moref', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'portgroupType' => (is => 'ro', xml_name => 'portgroupType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vc' => (is => 'ro', xml_name => 'vc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vcName' => (is => 'ro', xml_name => 'vcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isVCEnabled' => (is => 'ro', xml_name => 'isVCEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'network' => (is => 'ro', xml_name => 'network', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'networkName' => (is => 'ro', xml_name => 'networkName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'scopeType' => (is => 'ro', xml_name => 'scopeType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a Portgroup vCloud query as a record.



=head1 ATTRIBUTES

=over

=item moref

modifiable: none

Managed object reference of the portgroup

=item name

modifiable: none

Portgroup name

=item portgroupType

modifiable: none

Portgroup type

=item vc

modifiable: none

Virtual center reference or id

=item vcName

modifiable: none

Vitual center name associated with the portgroup

=item isVCEnabled

modifiable: none

Shows whether Virtual center is enabled

=item network

modifiable: none

Network reference or id

=item networkName

modifiable: none

Name of the network that uses the portgroup

=item scopeType

modifiable: none

Scope of network using the portgroup(1=Global, 2=Organization, 3=vApp)

=back

=cut


1;
