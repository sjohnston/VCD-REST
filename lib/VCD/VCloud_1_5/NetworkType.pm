package VCD::VCloud_1_5::NetworkType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityType';

has_xml 'Configuration' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::NetworkConfigurationType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::NetworkConfigurationType;


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
