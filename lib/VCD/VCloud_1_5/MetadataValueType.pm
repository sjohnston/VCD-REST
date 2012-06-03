package VCD::VCloud_1_5::MetadataValueType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'Value' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 ATTRIBUTES

=over

=item Value

=back

=cut


1;
