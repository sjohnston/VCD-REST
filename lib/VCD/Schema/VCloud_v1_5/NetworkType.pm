package VCD::Schema::VCloud_v1_5::NetworkType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'Configuration' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NetworkConfigurationType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a Network in the vCloud model.



=head1 ATTRIBUTES

=over

=item Configuration

modifiable: always

Network configuration.

=back

=cut


1;
