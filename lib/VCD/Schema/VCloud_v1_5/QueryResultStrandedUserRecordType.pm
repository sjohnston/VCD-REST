package VCD::Schema::VCloud_v1_5::QueryResultStrandedUserRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'fullName' => (is => 'ro', xml_name => 'fullName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isInSync' => (is => 'ro', xml_name => 'isInSync', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfDeployedVMs' => (is => 'ro', xml_name => 'numberOfDeployedVMs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfStoredVMs' => (is => 'ro', xml_name => 'numberOfStoredVMs', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a StrandedUser vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item fullName

modifiable: none

Full name

=item isInSync

modifiable: none

Shows whether it is in sync

=item numberOfDeployedVMs

modifiable: none

Number of deployed VMs

=item numberOfStoredVMs

modifiable: none

Number of stored VMs

=back

=cut


1;
