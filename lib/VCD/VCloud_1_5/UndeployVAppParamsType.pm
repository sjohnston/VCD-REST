package VCD::VCloud_1_5::UndeployVAppParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'UndeployPowerAction' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents vApp/VM undeployment parameters.



=head1 ATTRIBUTES

=over

=item UndeployPowerAction

=head1 API

Available Since API: 1.5

modifiable: always

The specified action is applied to all VMs in the vApp. All values other
than 'default' ignore actions, order, and delay specified in the
StartupSection. One of: powerOff (Power off the VMs. This is the default
action if this attribute is missing or empty), suspend (Suspend the VMs),
shutdown (Shut down the VMs), force (Attempt to power off the VMs. Failures
in undeploying the VM or associated networks are ignored. All references to
the vApp and its VMs are removed from the database), default (Use the
actions, order, and delay specified in the StartupSection).

=back

=cut


1;
