package VCD::Schema::VCloud_v1_5::Extension::VmVimInfoType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'VmVimObjectRef' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'DatastoreVimObjectRef' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'HostVimObjectRef' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VirtualDisksMaxChainLength' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents a vSphere VM information.



=head1 ATTRIBUTES

=over

=item VmVimObjectRef

modifiable: none

Reference to a vim vm object.

=item DatastoreVimObjectRef

modifiable: none

The datastore where the VM disk file is stored.

=item HostVimObjectRef

modifiable: none

The host for this VM.

=item VirtualDisksMaxChainLength

modifiable: none

The maximum chain length of the VM's virtual disks.

=back

=cut


1;
