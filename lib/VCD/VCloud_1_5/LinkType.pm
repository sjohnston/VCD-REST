package VCD::VCloud_1_5::LinkType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ReferenceType';

has_xml_attr 'rel' => (is => 'rw', xml_name => 'rel', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Extends reference type by adding relation attribute. Defines a hyper-link
with a relationship, hyper-link reference, and an optional media type.



=head1 ATTRIBUTES

=over

=item rel

modifiable: always

Defines the relationship of the link to the object that contains it. A
relationship can be the name of an operation on the object, a reference to
a contained or containing object, or a reference to an alternate
representation of the object. The relationship value implies the HTTP verb
to use when you use the link's href as a request URL.

=back

=cut


1;
