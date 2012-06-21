package VCD::Schema::VCloud_v1_5::Extension::VMWExternalNetworkType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::NetworkType';

has_xml 'VimPortGroupRef' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

External network type.



=head1 ATTRIBUTES

=over

=item VimPortGroupRef

modifiable: always

The portgroup that backs this network. A valid reference to an existing
network or dvportgroup in a vCenter server is required on create. On
modify, this element is required for schema validation, but its contents
cannot be changed.

=back

=cut


1;
