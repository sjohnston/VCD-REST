package VCD::Schema::VCloud_v1_5::QueryResultAllocatedExternalAddressRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'network' => (is => 'ro', xml_name => 'network', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'ipAddress' => (is => 'ro', xml_name => 'ipAddress', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'linkedNetwork' => (is => 'ro', xml_name => 'linkedNetwork', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a AllocatedExternalAddress vCloud query as a
record.



=head1 ATTRIBUTES

=over

=item network

modifiable: none

Network reference or id

=item ipAddress

modifiable: none

Allocated IP address

=item linkedNetwork

modifiable: none

Linked network reference or id

=back

=cut


1;
