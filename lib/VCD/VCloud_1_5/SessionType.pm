package VCD::VCloud_1_5::SessionType;

use Moose;

use VCD::HasXML;
use VCD::VCloud_1_5::OrgListType;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'user' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'user');
has_xml 'org' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'org');
has_xml_link 'orgs' => (is => 'ro', isa => 'VCD::VCloud_1_5::OrgListType',
    handles => { org_list => 'Org' },
    xml_type => 'application/vnd.vmware.vcloud.orgList+xml', xml_rel => 'down');

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents a vCloud Session.



=head1 ATTRIBUTES

=over

=item user

modifiable: none

The name of the user that owns the session

=item org

modifiable: none

The name of the user's organization

=back

=cut


1;
