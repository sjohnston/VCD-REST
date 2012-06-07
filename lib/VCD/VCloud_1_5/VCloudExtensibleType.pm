package VCD::VCloud_1_5::VCloudExtensibleType;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'VCloudExtension' => (is => 'rw', isa => 'ArrayRef[VCD::VCloud_1_5::VCloudExtensionType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::VCloudExtensionType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

A base abstract type for all complex types that support extensions.



=head1 ATTRIBUTES

=over

=item VCloudExtension

modifiable: always

An optional extension element that can contain an arbitrary number of
elements and attributes.

=back

=cut


1;
