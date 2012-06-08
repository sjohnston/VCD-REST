package VCD::VCloud_1_5::VAppNetworkConfigurationType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml_attr 'networkName' => (is => 'rw', xml_name => 'networkName', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Description' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Configuration' => (is => 'rw', isa => 'VCD::VCloud_1_5::NetworkConfigurationType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsDeployed' => (is => 'ro', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::NetworkConfigurationType;


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
