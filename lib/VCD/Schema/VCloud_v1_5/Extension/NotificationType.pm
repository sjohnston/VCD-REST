package VCD::Schema::VCloud_v1_5::Extension::NotificationType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml_attr 'type' => (is => 'rw', xml_name => 'type', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml_attr 'eventId' => (is => 'rw', xml_name => 'eventId', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Link' => (is => 'rw', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::LinkType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'EntityLink' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::EntityLinkType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Timestamp' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'OperationSuccess' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item type

=item eventId

=item Link

=item EntityLink

modifiable: none

Contains link to a vCloud entity associated with specific relation type.

=item Timestamp

=item OperationSuccess

=back

=cut


1;
