package VCD::External::OVF::DeploymentOptionSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::External::OVF::Section_Type';

has_xml 'Configuration' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::DeploymentOptionSection_Type_Configuration]', xml_maximum => 'unbounded', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::DeploymentOptionSection_Type_Configuration;


=head1 DESCRIPTION

Enumeration of discrete deployment options



=head1 ATTRIBUTES

=over

=item Configuration

=back

=cut


1;
