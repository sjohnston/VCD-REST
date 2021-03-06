package VCD::Schema::VCloud_v1_5::NetworkPoolReferencesType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'NetworkPoolReference' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

List of network pools in this vDC.



=head1 ATTRIBUTES

=over

=item NetworkPoolReference

modifiable: none

A reference to a network pool.

=back

=cut


1;
