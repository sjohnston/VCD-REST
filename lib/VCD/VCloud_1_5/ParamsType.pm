package VCD::VCloud_1_5::ParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'name' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'name');
has_xml 'Description' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

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
