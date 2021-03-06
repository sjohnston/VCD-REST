package VCD::Schema::External::OVF::DeploymentOptionSectionTypeConfiguration;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'id' => (is => 'rw', xml_name => 'id', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'default' => (is => 'rw', xml_is_optional => '1', xml_name => 'default', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Label' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::MsgType]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Description' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::MsgType]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item id

=item default

=item Label

=item Description

=back

=cut


1;
