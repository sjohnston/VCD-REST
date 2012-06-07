package VCD::External::OVF::RASD_Type;

use Moose;

use VCD::HasXML;

extends 'VCD::External::RASD::CIM_ResourceAllocationSettingData_Type';

has_xml_attr 'required' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'required');
has_xml_attr 'configuration' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'configuration');
has_xml_attr 'bound' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'bound');



=head1 DESCRIPTION

Wrapper for CIM_ResourceAllocationSettingData_Type



=head1 ATTRIBUTES

=over

=item required

Determines whether import should fail if entry is not understood

=item configuration

Configuration from DeploymentOptionSection this entry is valid for

=item bound

States that this entry is a range marker

=back

=cut


1;
