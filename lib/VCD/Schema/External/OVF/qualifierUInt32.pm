package VCD::Schema::External::OVF::qualifierUInt32;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::cimUnsignedInt';

has_xml_attr 'qualifier' => (is => 'rw', xml_name => 'qualifier', xml_namespace => 'http://schemas.dmtf.org/wbem/wscim/1/common');


__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item qualifier

=back

=cut


1;
