package VCD::Schema::VCloud_v1_5::OrgType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

with 'VCD::Roles::OrgType';

has_xml 'FullName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsEnabled' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents an organization. Unit of multi-tenancy and a top-level
container. Contain vDCs, TasksList, Catalogs and Shared Network entities.



=head1 ATTRIBUTES

=over

=item FullName

modifiable: always

Full name of the organization.

=item IsEnabled

modifiable: none

Not specifying this flag in the request to update the OrgSettings will
result in disabling the org (default value if flag is not specified is
false) True if this organization is enabled. If enabled, the organization
allows login and all other operations.

=back

=cut


1;
