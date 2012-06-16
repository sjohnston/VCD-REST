package VCD::Schema::External::OVF::DeploymentOptionSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::Section_Type';

has_xml 'Configuration' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::DeploymentOptionSection_Type_Configuration]', xml_maximum => 'unbounded', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::Schema::External::OVF::DeploymentOptionSection_Type_Configuration;


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Enumeration of discrete deployment options



=head1 ATTRIBUTES

=over

=item Configuration

=back

=cut


1;
