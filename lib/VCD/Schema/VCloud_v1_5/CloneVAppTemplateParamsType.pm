package VCD::Schema::VCloud_v1_5::CloneVAppTemplateParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ParamsType';

has_xml 'Source' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsSourceDelete' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

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
