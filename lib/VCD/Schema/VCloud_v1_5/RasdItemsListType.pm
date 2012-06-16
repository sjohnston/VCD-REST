package VCD::Schema::VCloud_v1_5::RasdItemsListType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'Item' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a list of RASD items.



=head1 ATTRIBUTES

=over

=item Item

modifiable: always

A RASD item content.

=back

=cut


1;
