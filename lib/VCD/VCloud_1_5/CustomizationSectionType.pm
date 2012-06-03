package VCD::VCloud_1_5::CustomizationSectionType;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml 'href' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'href');
has_xml 'type' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'type');
has_xml 'CustomizeOnInstantiate' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Link' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::LinkType]', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a vApp template customization settings section.



=head1 ATTRIBUTES

=over

=item href

modifiable: none

Link to the section.

=item type

modifiable: none

Type of the section.

=item CustomizeOnInstantiate

modifiable: always

Flag to enable or disable vApp customization on instantiate.

=item Link

modifiable: none

Optional link to an entity or operation associated with this section.

=back

=cut


1;
