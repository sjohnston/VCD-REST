package VCD::VCloud_1_5::InstantiateVAppParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VAppCreationParamsType';

has_xml 'linkedClone' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'linkedClone');
has_xml 'Source' => (is => 'rw', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsSourceDelete' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

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
