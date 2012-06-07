package VCD::VCloud_1_5::AdminOrgType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::OrgType';

has_xml 'Settings' => (is => 'rw', isa => 'VCD::VCloud_1_5::OrgSettingsType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Users' => (is => 'ro', isa => 'Maybe[VCD::VCloud_1_5::UsersListType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Groups' => (is => 'ro', isa => 'Maybe[VCD::VCloud_1_5::GroupsListType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Catalogs' => (is => 'ro', isa => 'Maybe[VCD::VCloud_1_5::CatalogsListType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Vdcs' => (is => 'ro', isa => 'Maybe[VCD::VCloud_1_5::VdcsType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Networks' => (is => 'ro', isa => 'Maybe[VCD::VCloud_1_5::NetworksType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::VdcsType;
use VCD::VCloud_1_5::CatalogsListType;
use VCD::VCloud_1_5::NetworksType;
use VCD::VCloud_1_5::GroupsListType;
use VCD::VCloud_1_5::UsersListType;
use VCD::VCloud_1_5::OrgSettingsType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

The AdminOrgType represents an administrative view of an organization. It
includes all members of the Org element, and adds several elements that can
be viewed and modified only by system administrators.



=head1 ATTRIBUTES

=over

=item Settings

modifiable: always

Settings for this organization. Establishes quotas and policies, specifies
how the organization connects to LDAP and email services.

=item Users

modifiable: none

Container for ReferenceType elements that reference users in the
organization.

=item Groups

modifiable: none

Container for ReferenceType elements that reference groups in the
organization.

=item Catalogs

modifiable: none

Container for ReferenceType elements that reference catalogs in the
organization.

=item Vdcs

modifiable: none

Container for ReferenceType elements that reference vDCs in the
organization.

=item Networks

modifiable: none

Container for ReferenceType elements that reference networks in the
organization.

=back

=cut


1;
