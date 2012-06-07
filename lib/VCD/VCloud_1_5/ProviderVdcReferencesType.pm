package VCD::VCloud_1_5::ProviderVdcReferencesType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'ProviderVdcReference' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::ReferenceType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::ReferenceType;


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
