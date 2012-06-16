package VCD::Schema::VCloud_v1_5::CatalogItemType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'Entity' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Property' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::PropertyType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::PropertyType;
use VCD::Schema::VCloud_v1_5::ReferenceType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Contains a reference to a VappTemplate or Media object and related
metadata.



=head1 ATTRIBUTES

=over

=item Entity

modifiable: always

A reference to a VappTemplate or Media object.

=item Property

modifiable: always

User-specified key/value pair. This element has been superseded by the
Metadata element, which is the preferred way to specify key/value pairs for
objects.

=back

=cut


1;
