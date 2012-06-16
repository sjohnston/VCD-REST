package VCD::Schema::VCloud_v1_5::RelocateParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'Datastore' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::ReferenceType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Parameters to be used for vm relocation.



=head1 ATTRIBUTES

=over

=item Datastore

modifiable: always

Reference to destination datastore.

=back

=cut


1;
