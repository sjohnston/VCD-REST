package VCD::Schema::VCloud_v1_5::QueryResultCellRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'primaryIp' => (is => 'ro', xml_name => 'primaryIp', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isActive' => (is => 'ro', xml_name => 'isActive', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isVMwareVc' => (is => 'ro', xml_name => 'isVMwareVc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'buildDate' => (is => 'ro', xml_name => 'buildDate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'version' => (is => 'ro', xml_name => 'version', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a Cell vCloud query as a record.



=head1 ATTRIBUTES

=over

=item primaryIp

modifiable: none

Primary IP

=item name

modifiable: none

name

=item isActive

modifiable: none

Shows whether it is active

=item isVMwareVc

modifiable: none

Shows whether it is Vmware virtual center

=item buildDate

modifiable: none

Build date

=item version

modifiable: none

Version

=back

=cut


1;
