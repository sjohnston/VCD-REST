package VCD::Schema::VCloud_v1_5::MediaType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceEntityType';

has_xml_attr 'imageType' => (is => 'rw', xml_name => 'imageType', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'size' => (is => 'ro', xml_name => 'size', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Owner' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::OwnerType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::OwnerType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a media.



=head1 ATTRIBUTES

=over

=item imageType

modifiable: create

Media image type. One of: iso, floppy Required on create. Must be present
on modify but cannot be changed.

=item size

modifiable: none

Size of the media. For modify operation this is required only for the XSD
validation it could not be changed.

=item Owner

modifiable: none

Media owner.

=back

=cut


1;
