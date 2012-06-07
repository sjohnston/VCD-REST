package VCD::External::OVF::ProductSection_Type_Property;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'key' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'key');
has_xml_attr 'type' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'type');
has_xml_attr 'qualifiers' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'qualifiers');
has_xml_attr 'userConfigurable' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'userConfigurable');
has_xml_attr 'value' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'value');
has_xml_attr 'password' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'password');
has_xml 'Label' => (is => 'rw', isa => 'Maybe[VCD::External::OVF::Msg_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Description' => (is => 'rw', isa => 'Maybe[VCD::External::OVF::Msg_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Value' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::PropertyConfigurationValue_Type]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::PropertyConfigurationValue_Type;
use VCD::External::OVF::Msg_Type;




=head1 ATTRIBUTES

=over

=item key

Property identifier

=item type

Property type

=item qualifiers

A comma-separated set of type qualifiers

=item userConfigurable

Determines whether the property value is configurable during installation

=item value

Default value for property

=item password

Determines whether the property value should be obscured during deployment

=item Label

Short description of property

=item Description

Description of property

=item Value

Alternative default property values for different configuration

=back

=cut


1;
