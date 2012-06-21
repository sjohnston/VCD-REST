package VCD::Schema::VCloud_v1_5::VAppCreationParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ParamsType';

has_xml_attr 'deploy' => (is => 'rw', xml_is_optional => '1', xml_name => 'deploy', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'powerOn' => (is => 'rw', xml_is_optional => '1', xml_name => 'powerOn', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppParent' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'InstantiationParams' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::InstantiationParamsType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents vApp creation parameters.



=head1 ATTRIBUTES

=over

=item deploy

modifiable: always

Flag to deploy the VApp after successful creation.

=item powerOn

modifiable: always

Flag to deploy and power on the VApp after successful creation.

=item VAppParent

modifiable: always

Reserved. Unimplemented.

=item InstantiationParams

modifiable: always

Instantiation parameters of a VApp.

=back

=cut


1;
