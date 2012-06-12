package VCD::VCloud_1_5::OrgVAppTemplateLeaseSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'DeleteOnStorageLeaseExpiration' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'StorageLeaseSeconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Defines default lease policies for vAppTemplate on organization level.



=head1 ATTRIBUTES

=over

=item DeleteOnStorageLeaseExpiration

modifiable: always

Delete on storage lease expiration, default false If true, storage for a
vAppTemplate is deleted when the vAppTemplate lease expires. If false, the
storage is flagged for deletion, but not deleted.

=item StorageLeaseSeconds

modifiable: always

Storage lease in seconds

=back

=cut


1;
