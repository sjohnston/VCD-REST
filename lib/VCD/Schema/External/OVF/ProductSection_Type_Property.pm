package VCD::Schema::External::OVF::ProductSection_Type_Property;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'key' => (is => 'rw', xml_name => 'key', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'type' => (is => 'rw', xml_name => 'type', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'qualifiers' => (is => 'rw', xml_is_optional => '1', xml_name => 'qualifiers', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'userConfigurable' => (is => 'rw', xml_is_optional => '1', xml_name => 'userConfigurable', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'value' => (is => 'rw', xml_is_optional => '1', xml_name => 'value', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'password' => (is => 'rw', xml_is_optional => '1', xml_name => 'password', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Label' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::Msg_Type]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Description' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::Msg_Type]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Value' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::PropertyConfigurationValue_Type]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::Schema::External::OVF::Msg_Type;
use VCD::Schema::External::OVF::PropertyConfigurationValue_Type;


__PACKAGE__->meta->make_immutable;



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
