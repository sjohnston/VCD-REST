package VCD::Schema::VCloud_v1_5::InstantiateVAppParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VAppCreationParamsType';

has_xml_attr 'linkedClone' => (is => 'rw', xml_is_optional => '1', xml_name => 'linkedClone', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Source' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsSourceDelete' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::ReferenceType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents vApp instantiation parameters.



=head1 ATTRIBUTES

=over

=item linkedClone

modifiable: always

Reserved. Unimplemented.

=item Source

modifiable: always

A reference to a source object such as a vApp or vApp template.

=item IsSourceDelete

=head1 API

Available Since API: 1.0

modifiable: always

Set to true to delete the source object after the operation completes.

=back

=cut


1;
