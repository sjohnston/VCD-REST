package VCD::Schema::VCloud_v1_5::VCloudExtensionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'required' => (is => 'rw', xml_is_optional => '1', xml_name => 'required', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

has_xml 'VimObjectRef' => (is => 'ro', isa => 'VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Cloud API extension type with any elements and any attributes.



=head1 ATTRIBUTES

=over

=item required

modifiable: always

Determines whether server should fail if extension is not understood.

=back

=cut


1;
