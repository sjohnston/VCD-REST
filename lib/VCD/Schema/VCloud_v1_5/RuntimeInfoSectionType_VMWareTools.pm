package VCD::Schema::VCloud_v1_5::RuntimeInfoSectionType_VMWareTools;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'version' => (is => 'ro', xml_name => 'version', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item version

modifiable: none

Version of the vmware tools

=back

=cut


1;
