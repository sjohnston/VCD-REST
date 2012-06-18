package VCD::Schema::VCloud_v1_5::Extension::VimObjectRefListType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'VimObjectRefs' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefsType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::VimObjectRefsType;


__PACKAGE__->meta->make_immutable;



=head1 ATTRIBUTES

=over

=item VimObjectRefs

A list of VimServerObjRef objects.

=back

=cut


1;
