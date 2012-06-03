package VCD::VCloud_1_5::CloneVAppTemplateParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ParamsType';

has_xml 'Source' => (is => 'rw', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsSourceDelete' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents parameters for copying a vApp template and optionally deleting
the source.



=head1 ATTRIBUTES

=over

=item Source

modifiable: always

Reference to source vApp template to clone.

=item IsSourceDelete

=head1 API

Available Since API: 1.0

modifiable: always

Optional flag to delete the source vApp template after cloning.

=back

=cut


1;
