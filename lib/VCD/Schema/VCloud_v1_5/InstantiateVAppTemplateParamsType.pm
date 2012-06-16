package VCD::Schema::VCloud_v1_5::InstantiateVAppTemplateParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::InstantiateVAppParamsType';

has_xml 'AllEULAsAccepted' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents vApp template instantiation parameters.



=head1 ATTRIBUTES

=over

=item AllEULAsAccepted

modifiable: always

Used to confirm acceptance of all EULAs in a vApp template. Instantiation
fails if this element is missing, empty, or set to false and one or more
EulaSection elements are present.

=back

=cut


1;
