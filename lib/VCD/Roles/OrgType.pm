package VCD::Roles::OrgType;

use Moose::Role;

use VCD::Schema;

has_xml_link 'vdcs' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::VdcType]',
    traits  => ['Array'],
    handles => {
        find_vdc => 'first',
    },
    xml_type => 'application/vnd.vmware.vcloud.vdc+xml', xml_rel => 'down');

1;
