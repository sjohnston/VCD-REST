package VCD::External::OVF::DiskSection_Type;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml 'Disk' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::VirtualDiskDesc_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::VirtualDiskDesc_Type;


=head1 DESCRIPTION

Descriptions of virtual disks used within the package



=head1 ATTRIBUTES

=over

=item Disk

=back

=cut


1;
