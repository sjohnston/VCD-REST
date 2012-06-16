package VCD::Schema::External::OVF::InstallSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::Section_Type';

has_xml_attr 'initialBootStopDelay' => (is => 'rw', xml_is_optional => '1', xml_name => 'initialBootStopDelay', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');



__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

If present indicates that the virtual machine needs to be initially booted
to install and configure the software



=head1 ATTRIBUTES

=over

=item initialBootStopDelay

Delay in seconds to wait for power off to complete after initial boot

=back

=cut


1;
