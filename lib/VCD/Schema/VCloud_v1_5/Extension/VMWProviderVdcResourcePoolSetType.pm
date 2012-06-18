package VCD::Schema::VCloud_v1_5::Extension::VMWProviderVdcResourcePoolSetType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'VMWProviderVdcResourcePool' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::Extension::VMWProviderVdcResourcePoolType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::VMWProviderVdcResourcePoolType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents backing resource pool set



=head1 ATTRIBUTES

=over

=item VMWProviderVdcResourcePool

The backing resource pool set

=back

=cut


1;
