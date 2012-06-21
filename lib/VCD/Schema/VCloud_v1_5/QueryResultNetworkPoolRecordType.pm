package VCD::Schema::VCloud_v1_5::QueryResultNetworkPoolRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'networkPoolType' => (is => 'ro', xml_name => 'networkPoolType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isBusy' => (is => 'ro', xml_name => 'isBusy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a NetworkPool vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

Network pool name

=item networkPoolType

modifiable: none

Type of networkpool (0=Vlan backed network pool; 1=vNI backed network
pool;2=Portgroup backed network pool)

=item isBusy

modifiable: none

Shows whether it is busy

=back

=cut


1;
