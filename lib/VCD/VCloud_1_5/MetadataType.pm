package VCD::VCloud_1_5::MetadataType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'MetadataEntry' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::MetadataEntryType]', namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 ATTRIBUTES

=over

=item MetadataEntry

=back

=cut


1;
