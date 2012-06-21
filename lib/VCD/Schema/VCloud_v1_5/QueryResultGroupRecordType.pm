package VCD::Schema::VCloud_v1_5::QueryResultGroupRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'roleName' => (is => 'ro', xml_name => 'roleName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isReadOnly' => (is => 'ro', xml_name => 'isReadOnly', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a Group vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item roleName

modifiable: none

Role name

=item isReadOnly

modifiable: none

Shows whether it is read only

=back

=cut


1;
