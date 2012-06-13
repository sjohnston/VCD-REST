package VCD::VCloud_1_5::CustomizationSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::External::OVF::Section_Type';

has_xml_attr 'href' => (is => 'ro', xml_is_optional => '1', xml_name => 'href', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'type' => (is => 'ro', xml_is_optional => '1', xml_name => 'type', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'CustomizeOnInstantiate' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Link' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::LinkType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::LinkType;


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
