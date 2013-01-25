package VCD::Schema::VCloud_v1_5::InstantiationParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::External::OVF::SectionType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'NetworkConnectionSection' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NetworkConnectionSectionType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NetworkConfigSection' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::NetworkConfigSectionType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a list of ovf:Section to configure for instantiating a VApp.



=head1 ATTRIBUTES

=over

=item Section

modifiable: always

An ovf:Section to configure for instantiation.

=back

=cut


1;
