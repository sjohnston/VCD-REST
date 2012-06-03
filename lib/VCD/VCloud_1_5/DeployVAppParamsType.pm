package VCD::VCloud_1_5::DeployVAppParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'powerOn' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'powerOn');
has_xml 'deploymentLeaseSeconds' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'deploymentLeaseSeconds');
has_xml 'forceCustomization' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'forceCustomization');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents vApp/VM deployment parameters.



=head1 ATTRIBUTES

=over

=item powerOn

modifiable: always

Used to specify whether to power on vapp on deployment, if not set default
value is true.

=item deploymentLeaseSeconds

modifiable: always

Lease in seconds for deployment.

=item forceCustomization

Used to specify whether to force customization on deployment, if not set
default value is false.

=back

=cut


1;
