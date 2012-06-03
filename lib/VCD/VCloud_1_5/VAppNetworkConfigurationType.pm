package VCD::VCloud_1_5::VAppNetworkConfigurationType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'networkName' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'networkName');
has_xml 'Description' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Configuration' => (is => 'rw', isa => 'VCD::VCloud_1_5::NetworkConfigurationType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsDeployed' => (is => 'ro', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a VApp network configuration.



=head1 ATTRIBUTES

=over

=item networkName

modifiable: always

This attribute is the name of the vApp network in this vApp for which the
configuration applies.

=item Description

modifiable: always

A description for the network configuration.

=item Configuration

modifiable: always

Configuration itself.

=item IsDeployed

modifiable: none

Read only element which indicates whether this network has been deployed or
not.

=back

=cut


1;
