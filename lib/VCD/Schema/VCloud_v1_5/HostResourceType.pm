package VCD::Schema::VCloud_v1_5::HostResourceType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml_attr 'capacity' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'busType' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'busSubType' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

vCloud API Custom Attributes for rasd:HostResource



=head1 ATTRIBUTES

=over

=item capacity

Hard disk capacity in megabytes.

=item busType

modifiable: none

=item busSubType

modifiable: none

=back

=cut


1;
