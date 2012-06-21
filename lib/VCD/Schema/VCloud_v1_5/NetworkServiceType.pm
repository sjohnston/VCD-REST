package VCD::Schema::VCloud_v1_5::NetworkServiceType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'IsEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

This is the root type of all NetworkServices



=head1 ATTRIBUTES

=over

=item IsEnabled

modifiable: always

Enable or disable the service using this flag

=back

=cut


1;
