package VCD::Schema::VCloud_v1_5::AdminOrgType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::OrgType';

has_xml 'Settings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OrgSettingsType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Users' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::UsersListType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Groups' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::GroupsListType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Catalogs' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::CatalogsListType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Vdcs' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::VdcsType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Networks' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NetworksType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

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
