package VCD::Schema::VCloud_v1_5::Extension::OrganizationResourcePoolSetType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'ResourcePoolVimObjectRef' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents a set of resource pools that back an organization vDC.



=head1 ATTRIBUTES

=over

=item ResourcePoolVimObjectRef

modifiable: none

Vim object reference to an organization resource pool.

=back

=cut


1;
