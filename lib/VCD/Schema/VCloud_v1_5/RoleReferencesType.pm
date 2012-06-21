package VCD::Schema::VCloud_v1_5::RoleReferencesType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'RoleReference' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Container for ReferenceType elements that reference RoleType objects.



=head1 ATTRIBUTES

=over

=item RoleReference

modifiable: none

ReferenceType element that references a role.

=back

=cut


1;
