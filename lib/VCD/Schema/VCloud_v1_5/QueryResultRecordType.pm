package VCD::Schema::VCloud_v1_5::QueryResultRecordType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'href' => (is => 'rw', xml_is_optional => '1', xml_name => 'href', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'id' => (is => 'rw', xml_is_optional => '1', xml_name => 'id', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'type' => (is => 'rw', xml_is_optional => '1', xml_name => 'type', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Link' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::LinkType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::LinkType;


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

always

=head1 DESCRIPTION

Base type for query result Records. Subtypes define more specific elements.



=head1 ATTRIBUTES

=over

=item href

modifiable: always

Contains the URI to the resource.

=item id

modifiable: always

Contains the vcd id of the resource.

=item type

modifiable: always

Contains the type of the resource.

=item Link

modifiable: none

Contains link to an operation associated with specific relation type.

=back

=cut


1;
