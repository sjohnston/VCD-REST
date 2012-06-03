package VCD::VCloud_1_5::LeaseSettingsSectionType;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml 'href' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'href');
has_xml 'type' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'type');
has_xml 'Link' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::LinkType]', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DeploymentLeaseInSeconds' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'StorageLeaseInSeconds' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DeploymentLeaseExpiration' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'StorageLeaseExpiration' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents the lease settings section for a vApp.



=head1 ATTRIBUTES

=over

=item href

modifiable: none

Link to the section.

=item type

modifiable: none

Type of the section.

=item Link

modifiable: none

Optional link to an entity or operation associated with this section.

=item DeploymentLeaseInSeconds

modifiable: always

Deployment lease in seconds.

=item StorageLeaseInSeconds

modifiable: always

Storage lease in seconds.

=item DeploymentLeaseExpiration

modifiable: none

Expiration lease of deployment.

=item StorageLeaseExpiration

modifiable: none

Expiration lease of storage.

=back

=cut


1;
