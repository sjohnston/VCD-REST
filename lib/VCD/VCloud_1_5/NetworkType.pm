package VCD::VCloud_1_5::NetworkType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityType';

has_xml 'Configuration' => (is => 'rw', isa => 'VCD::VCloud_1_5::NetworkConfigurationType', namespace => 'http://www.vmware.com/vcloud/v1.5');

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
