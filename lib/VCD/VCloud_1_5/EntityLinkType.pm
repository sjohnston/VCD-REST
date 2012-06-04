package VCD::VCloud_1_5::EntityLinkType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::EntityReferenceType';

has_xml 'rel' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'rel');

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Extends EntityReference type by adding relation attribute.



=head1 ATTRIBUTES

=over

=item rel

modifiable: always

Defines the relationship of the link to the object that contains it. A
relationship can be the name of an operation on the object, a reference to
a contained or containing object, or a reference to an alternate
representation of the object. The relationship value implies the HTTP verb
to use when you use the link's href value as a request URL.

=back

=cut


1;