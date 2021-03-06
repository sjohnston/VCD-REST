package VCD::Schema::VCloud_v1_5::RuntimeInfoSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::SectionType';

has_xml 'VMWareTools' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::RuntimeInfoSectionTypeVMWareTools]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

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
