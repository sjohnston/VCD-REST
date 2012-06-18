package VCD::Schema::VCloud_v1_5::QueryResultCatalogRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::QueryResultRecordType';

has_xml_attr 'name' => (is => 'ro', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isPublished' => (is => 'ro', xml_name => 'isPublished', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'isShared' => (is => 'ro', xml_name => 'isShared', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'creationDate' => (is => 'ro', xml_name => 'creationDate', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'orgName' => (is => 'ro', xml_name => 'orgName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'ownerName' => (is => 'ro', xml_name => 'ownerName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfVAppTemplates' => (is => 'ro', xml_name => 'numberOfVAppTemplates', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'numberOfMedia' => (is => 'ro', xml_name => 'numberOfMedia', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'owner' => (is => 'ro', xml_name => 'owner', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a Catalog vCloud query as a record.



=head1 ATTRIBUTES

=over

=item name

modifiable: none

name

=item isPublished

modifiable: none

Shows whether it is in published catalog

=item isShared

modifiable: none

Shows whether it is shared

=item creationDate

modifiable: none

Creation date

=item orgName

modifiable: none

Organization name

=item ownerName

modifiable: none

Owner name

=item numberOfVAppTemplates

modifiable: none

Number of vApp templates

=item numberOfMedia

modifiable: none

Number of media

=item owner

modifiable: none

Owner reference or id

=back

=cut


1;
