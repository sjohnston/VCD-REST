package VCD::VCloud_1_5::NetworkConfigSectionType;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml 'href' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'href');
has_xml 'type' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'type');
has_xml 'Link' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::LinkType]', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NetworkConfig' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::VAppNetworkConfigurationType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents the network config section of a vApp.



=head1 ATTRIBUTES

=over

=item href

modifiable: none

Link to the section.

=item type

modifiable: none

Type of the section.

=item Link

modifiable: none

Optional link to an entity or operation associated with this section.

=item NetworkConfig

modifiable: always

Specifies the configuration of the individual networks in this vApp. In
addition to the configuration other state information is available here.

=back

=cut


1;
