package VCD::Schema::External::OVF::DeploymentOptionSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::SectionType';

has_xml 'Configuration' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::DeploymentOptionSectionTypeConfiguration]', xml_maximum => 'unbounded', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Enumeration of discrete deployment options



=head1 ATTRIBUTES

=over

=item Configuration

=back

=cut


1;
