package VCD::VCloud_1_5::VAppCreationParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ParamsType';

has_xml 'deploy' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'deploy');
has_xml 'powerOn' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'powerOn');
has_xml 'VAppParent' => (is => 'rw', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'InstantiationParams' => (is => 'rw', isa => 'VCD::VCloud_1_5::InstantiationParamsType', namespace => 'http://www.vmware.com/vcloud/v1.5');

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
