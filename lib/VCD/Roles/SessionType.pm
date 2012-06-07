package VCD::Roles::SessionType;

use Moose::Role;

use VCD::HasXML;

use VCD::VCloud_1_5::OrgListType;

has_xml_link 'orgs' => (is => 'ro', isa => 'VCD::VCloud_1_5::OrgListType',
    handles => { org_list => 'Org' },
    xml_type => 'application/vnd.vmware.vcloud.orgList+xml', xml_rel => 'down');

1;
