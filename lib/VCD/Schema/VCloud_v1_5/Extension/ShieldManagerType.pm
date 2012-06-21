package VCD::Schema::VCloud_v1_5::Extension::ShieldManagerType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::Extension::ServerType';

has_xml 'AssociatedVimServer' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents credentials to a vShield Manager server.



=head1 ATTRIBUTES

=over

=item AssociatedVimServer

modifiable: always

Reference to the vCenter server for this vShield manager.

=back

=cut


1;
