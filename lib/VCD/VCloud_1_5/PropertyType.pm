package VCD::VCloud_1_5::PropertyType;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'key' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'key');

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
