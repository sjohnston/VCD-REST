package VCD::Schema::VCloud_v1_5::ParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml_attr 'name' => (is => 'rw', xml_is_optional => '1', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Description' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

A basic type used to specify parameters for operations.



=head1 ATTRIBUTES

=over

=item name

modifiable: always

A name as parameter.

=item Description

modifiable: always

Optional description.

=back

=cut


1;
