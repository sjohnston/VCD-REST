package VCD::Schema::VCloud_v1_5::QueryResultOrgVdcResourcePoolRelationRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'vdc' => (is => 'ro', xml_name => 'vdc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'vc' => (is => 'ro', xml_name => 'vc', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'resourcePoolMoref' => (is => 'ro', xml_name => 'resourcePoolMoref', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a OrgVdcResourcePoolRelation vCloud query as a
record.



=head1 ATTRIBUTES

=over

=item vdc

modifiable: none

vDC reference or id

=item vc

modifiable: none

Virtual center reference or id

=item resourcePoolMoref

modifiable: none

Resource pool managed object reference

=back

=cut


1;
