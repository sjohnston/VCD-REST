package VCD::Schema::VCloud_v1_5::Extension::NumericRangeType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'Start' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'End' => (is => 'rw', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Range of integers.



=head1 ATTRIBUTES

=over

=item Start

modifiable: always

Start integer number of the range.

=item End

modifiable: always

End integer number of the range.

=back

=cut


1;
