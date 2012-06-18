package VCD::Schema::VCloud_v1_5::QueryResultDvSwitchRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'moref' => (is => 'ro', xml_name => 'moref', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vc' => (is => 'ro', xml_name => 'vc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vcName' => (is => 'ro', xml_name => 'vcName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isVCEnabled' => (is => 'ro', xml_name => 'isVCEnabled', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a DvSwitch vCloud query as a record.



=head1 ATTRIBUTES

=over

=item moref

modifiable: none

Managed object reference of DV Switch

=item name

modifiable: none

Virtual center name

=item vc

modifiable: none

Virtual center reference or id

=item vcName

modifiable: none

Vitual center name

=item isVCEnabled

modifiable: none

Shows whether Virtual center is enabled

=back

=cut


1;
