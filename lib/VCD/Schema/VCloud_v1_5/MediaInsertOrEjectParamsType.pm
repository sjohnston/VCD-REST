package VCD::Schema::VCloud_v1_5::MediaInsertOrEjectParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'Media' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents parameters for inserting/ejecting media to VM.



=head1 ATTRIBUTES

=over

=item Media

modifiable: always

Reference to a media for inserting/ejecting.

=back

=cut


1;
