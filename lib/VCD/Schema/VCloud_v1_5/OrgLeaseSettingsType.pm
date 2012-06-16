package VCD::Schema::VCloud_v1_5::OrgLeaseSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'DeleteOnStorageLeaseExpiration' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DeploymentLeaseSeconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'StorageLeaseSeconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Defines default lease durations and policies for an organization.



=head1 ATTRIBUTES

=over

=item DeleteOnStorageLeaseExpiration

modifiable: always

If true, storage for a vApp is deleted when the vApp s lease expires. If
false, the storage is flagged for deletion, but not deleted.

=item DeploymentLeaseSeconds

modifiable: always

Default duration of a vApp deployment lease, in seconds.

=item StorageLeaseSeconds

modifiable: always

Default duration of a storage lease, in seconds.

=back

=cut


1;
