package VCD::Schema::External::OVF::DiskSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::SectionType';

has_xml 'Disk' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::VirtualDiskDescType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Descriptions of virtual disks used within the package



=head1 ATTRIBUTES

=over

=item Disk

=back

=cut


1;
