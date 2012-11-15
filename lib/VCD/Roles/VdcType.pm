package VCD::Roles::VdcType;

use Moose::Role;

use VCD::Schema;

sub vapps {
    return grep { $_->type eq 'application/vnd.vmware.vcloud.vApp+xml' }
        @{ shift->ResourceEntities->ResourceEntity };
}

1;
