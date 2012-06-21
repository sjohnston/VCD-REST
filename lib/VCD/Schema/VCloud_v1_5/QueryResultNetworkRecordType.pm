package VCD::Schema::VCloud_v1_5::QueryResultNetworkRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'ipScopeId' => (is => 'ro', xml_name => 'ipScopeId', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'gateway' => (is => 'ro', xml_name => 'gateway', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'netmask' => (is => 'ro', xml_name => 'netmask', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'dns1' => (is => 'ro', xml_name => 'dns1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'dns2' => (is => 'ro', xml_name => 'dns2', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'dnsSuffix' => (is => 'ro', xml_name => 'dnsSuffix', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a Network vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item ipScopeId

modifiable: none

IP scope object of this network.

=item gateway

modifiable: none

Gateway for the network

=item netmask

modifiable: none

Netmask for the network

=item dns1

modifiable: none

Primary DNS for the network

=item dns2

modifiable: none

Secondary DNS for the network

=item dnsSuffix

modifiable: none

DNS suffix for the network

=item isBusy

modifiable: none

Shows whether it is busy

=back

=cut


1;
