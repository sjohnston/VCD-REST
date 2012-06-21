package VCD::Schema::VCloud_v1_5::InstantiateOvfParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VAppCreationParamsType';

has_xml_attr 'transferFormat' => (is => 'rw', xml_is_optional => '1', xml_name => 'transferFormat', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AllEULAsAccepted' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Represents vApp instantiation from OVF parameters



=head1 ATTRIBUTES

=over

=item transferFormat

=item AllEULAsAccepted

=back

=cut


1;
