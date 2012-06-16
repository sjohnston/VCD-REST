package VCD::Schema::VCloud_v1_5::PropertyType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'key' => (is => 'rw', xml_name => 'key', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Contains key/value pair as property.



=head1 ATTRIBUTES

=over

=item key

modifiable: always

The key of the property.

=back

=cut


1;
