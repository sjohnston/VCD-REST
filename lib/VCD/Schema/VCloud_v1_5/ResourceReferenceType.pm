package VCD::Schema::VCloud_v1_5::ResourceReferenceType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ReferenceType';

has_xml_attr 'status' => (is => 'ro', xml_is_optional => '1', xml_name => 'status', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a reference to a resource. Reference that contains an href
attribute, an optional name and type attributes, and a resource status
attribute.



=head1 ATTRIBUTES

=over

=item status

modifiable: none

Status of a resource.

=back

=cut


1;
