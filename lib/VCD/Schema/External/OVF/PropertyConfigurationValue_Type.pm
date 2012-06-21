package VCD::Schema::External::OVF::PropertyConfigurationValue_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'value' => (is => 'rw', xml_name => 'value', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'configuration' => (is => 'rw', xml_is_optional => '1', xml_name => 'configuration', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Type for alternative default values for properties when
DeploymentOptionSection is used



=head1 ATTRIBUTES

=over

=item value

Alternative default property value

=item configuration

Configuration from DeploymentOptionSection in which this value is default

=back

=cut


1;
