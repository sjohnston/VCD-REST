package VCD::Schema::VCloud_v1_5::VdcReferencesType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'VdcReference' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

List of organization vDCs backed by this provider vDC.



=head1 ATTRIBUTES

=over

=item VdcReference

modifiable: none

A reference to an organizaiotn vDC.

=back

=cut


1;
