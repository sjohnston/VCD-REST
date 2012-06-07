package VCD::VCloud_1_5::SerialPortConfigType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Status' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'StartConnected' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AllowGuestControl' => (is => 'rw', isa => 'Str', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Direction' => (is => 'rw', isa => 'Str', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ServiceUri' => (is => 'rw', isa => 'Str', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'YieldOnPoll' => (is => 'rw', isa => 'Str', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Internal use only.



=head1 ATTRIBUTES

=over

=item Status

modifiable: none

Indicates the current status of the connectable device. 	 Valid only
while the virtual machine is running.	     The set of possible values:   
 ok The device is working correctly.	 recoverableError The device has
reported a recoverable error.	For example, attempting to connect to
network   device that is being used by another virtual	  machine or some
other program would result	in this status. 	unrecoverableError
The device cannot be used. For example,      attempting to connect to a
network device that	     does not exist would result in this status.   
 untried The device status is unknown, or it has not	 been requested to
connect when the VM is	      powered on.

=item StartConnected

modifiable: always

Flag to specify whether or not to connect the device when the	 virtual
machine starts.

=item AllowGuestControl

modifiable: always

Flag to allow the guest to control whether the connectable	 device is
connected.

=item Direction

modifiable: always

The direction of the connection.	 Possible values are "client" and
"server". "client" indicates   that the virtual machine can initiate a
connection with a	system on the network using the specified
serviceURI. "server"	      indicates that the virtual machine can listen
for a connection	  on the specified serviceURI.

=item ServiceUri

modifiable: always

Identifies the local host or a system on the network,	 depending on the
value of direction.    If you use the virtual machine as a server, the URI
identifies	    the host on which the virtual machine runs. In this
case, the   host name part of the URI should be empty, or it should specify
	the address of the local host.		If you use the virtual
machine as a client, the URI identifies 	 the remote system on the
network.

=item YieldOnPoll

modifiable: always

Setting yieldOnPoll to true causes the virtual machine to	 provide
processor time information only when the virtual	machine's sole task
is polling the virtual serial port.

=back

=cut


1;
