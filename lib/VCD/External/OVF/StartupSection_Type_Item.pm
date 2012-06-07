package VCD::External::OVF::StartupSection_Type_Item;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'id' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'id');
has_xml_attr 'order' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'order');
has_xml_attr 'startDelay' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'startDelay');
has_xml_attr 'waitingForGuest' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'waitingForGuest');
has_xml_attr 'stopDelay' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'stopDelay');
has_xml_attr 'startAction' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'startAction');
has_xml_attr 'stopAction' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'stopAction');





=head1 ATTRIBUTES

=over

=item id

Unique identifier of the content (within a VirtualSystemCollection)

=item order

Startup order. Entities are started up starting with lower-numbers first,
starting from 0. Items with same order identifier may be started up
concurrently or in any order. The order is reversed for shutdown.

=item startDelay

Delay in seconds to wait for power on to complete

=item waitingForGuest

Resumes power-on sequence if guest software reports ok

=item stopDelay

Delay in seconds to wait for power off to complete

=item startAction

Start action to use, valid values are: 'powerOn', 'none'

=item stopAction

Stop action to use, valid values are: ''powerOff' , 'guestShutdown', 'none'

=back

=cut


1;
