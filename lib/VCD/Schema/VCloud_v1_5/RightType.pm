package VCD::Schema::VCloud_v1_5::RightType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'Category' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a right in the system. Rights are assigned to roles and are read
only. They cannot be created, modified or deleted.



=head1 ATTRIBUTES

=over

=item Category

modifiable: none

Optional category name.

=back

=cut


1;
