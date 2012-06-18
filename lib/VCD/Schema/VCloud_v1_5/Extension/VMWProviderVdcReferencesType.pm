package VCD::Schema::VCloud_v1_5::Extension::VMWProviderVdcReferencesType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'ProviderVdcReference' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::ReferenceType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a list of available provider vDCs.



=head1 ATTRIBUTES

=over

=item ProviderVdcReference

modifiable: none

Reference to a provider vDC.

=back

=cut


1;
