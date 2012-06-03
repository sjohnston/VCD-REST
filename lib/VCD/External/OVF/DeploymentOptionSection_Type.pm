package VCD::External::OVF::DeploymentOptionSection_Type;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml 'Configuration' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::DeploymentOptionSection_Type_Configuration]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 DESCRIPTION

Enumeration of discrete deployment options



=head1 ATTRIBUTES

=over

=item Configuration

=back

=cut


1;
