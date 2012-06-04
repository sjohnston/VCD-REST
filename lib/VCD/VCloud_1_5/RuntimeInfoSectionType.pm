package VCD::VCloud_1_5::RuntimeInfoSectionType;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml 'VMWareTools' => (is => 'rw', isa => 'VCD::VCloud_1_5::RuntimeInfoSectionType_VMWareTools', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Runtime information for a specific vm



=head1 ATTRIBUTES

=over

=item VMWareTools

=back

=cut


1;