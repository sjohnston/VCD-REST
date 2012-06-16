package VCD::Schema::VCloud_v1_5::VCloudExtensibleType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'VCloudExtension' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::VCloudExtensionType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::VCloudExtensionType;


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
