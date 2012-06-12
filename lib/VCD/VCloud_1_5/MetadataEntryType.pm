package VCD::VCloud_1_5::MetadataEntryType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'Key' => (is => 'rw', isa => 'Str', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Value' => (is => 'rw', isa => 'Str', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');





=head1 ATTRIBUTES

=over

=item Key

=item Value

=back

=cut


1;
