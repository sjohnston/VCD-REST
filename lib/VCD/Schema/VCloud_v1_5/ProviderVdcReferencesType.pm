package VCD::Schema::VCloud_v1_5::ProviderVdcReferencesType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'ProviderVdcReference' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::ReferenceType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Container for ReferenceType elements that reference ProviderVdcType
objects.



=head1 ATTRIBUTES

=over

=item ProviderVdcReference

modifiable: none

ReferenceType element that references a ProviderVdcType object.

=back

=cut


1;
