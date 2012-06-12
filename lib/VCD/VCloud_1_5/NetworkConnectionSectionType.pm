package VCD::VCloud_1_5::NetworkConnectionSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::External::OVF::Section_Type';

has_xml_attr 'href' => (is => 'ro', xml_is_optional => '1', xml_name => 'href', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'type' => (is => 'ro', xml_is_optional => '1', xml_name => 'type', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'PrimaryNetworkConnectionIndex' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NetworkConnection' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::NetworkConnectionType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Link' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::LinkType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::LinkType;
use VCD::VCloud_1_5::NetworkConnectionType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a list of network cards existing in a VM.



=head1 ATTRIBUTES

=over

=item href

modifiable: none

Link to the section.

=item type

modifiable: none

Type of the section.

=item PrimaryNetworkConnectionIndex

modifiable: always

Index to set the primary network card used for a VM. On modify operation if
this element is not specified the first NIC is set as primary one.

=item NetworkConnection

modifiable: always

Info for a network card in a VM.

=item Link

modifiable: none

Link an operation over the section.

=back

=cut


1;
