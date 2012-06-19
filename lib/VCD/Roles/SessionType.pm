package VCD::Roles::SessionType;

use Moose::Role;

use VCD::Schema;

use VCD::Schema::VCloud_v1_5::OrgListType;
use VCD::Schema::VCloud_v1_5::VCloudType;

has_xml_link 'orgs' => (is => 'ro', isa => 'VCD::Schema::VCloud_v1_5::OrgListType',
    handles => { org_list => 'Org' },
    xml_type => 'application/vnd.vmware.vcloud.orgList+xml', xml_rel => 'down');

has_xml_link 'admin' => (is => 'ro', isa => 'VCD::Schema::VCloud_v1_5::VCloudType',
    #handles => { org_list => 'Org' },
    xml_type => 'application/vnd.vmware.admin.vcloud+xml', xml_rel => 'down');

1;
