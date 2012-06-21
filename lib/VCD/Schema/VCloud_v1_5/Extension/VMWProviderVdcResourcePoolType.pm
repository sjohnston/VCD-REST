package VCD::Schema::VCloud_v1_5::Extension::VMWProviderVdcResourcePoolType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml_attr 'primary' => (is => 'ro', xml_is_optional => '1', xml_name => 'primary', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ResourcePoolVimObjectRef' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ResourcePoolRef' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Enabled' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents backing resource pool for provider vDC.



=head1 ATTRIBUTES

=over

=item primary

modifiable: none

True if this is primary resource pool for this providedr vDC.

=item ResourcePoolVimObjectRef

Vim object reference to resource pool

=item ResourcePoolRef

Reference to resource pool

=item Enabled

Resource pool enabled status

=back

=cut


1;
