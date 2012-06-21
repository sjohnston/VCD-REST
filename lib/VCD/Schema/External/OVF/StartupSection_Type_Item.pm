package VCD::Schema::External::OVF::StartupSection_Type_Item;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'id' => (is => 'rw', xml_name => 'id', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'order' => (is => 'rw', xml_name => 'order', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'startDelay' => (is => 'rw', xml_is_optional => '1', xml_name => 'startDelay', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'waitingForGuest' => (is => 'rw', xml_is_optional => '1', xml_name => 'waitingForGuest', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'stopDelay' => (is => 'rw', xml_is_optional => '1', xml_name => 'stopDelay', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'startAction' => (is => 'rw', xml_is_optional => '1', xml_name => 'startAction', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'stopAction' => (is => 'rw', xml_is_optional => '1', xml_name => 'stopAction', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;



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
