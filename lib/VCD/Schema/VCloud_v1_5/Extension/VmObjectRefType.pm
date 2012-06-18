package VCD::Schema::VCloud_v1_5::Extension::VmObjectRefType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType';

has_xml_attr 'name' => (is => 'rw', xml_is_optional => '1', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

A reference to a virtual machine in vCenter inventory.



=head1 ATTRIBUTES

=over

=item name

modifiable: always

The name of the virtual machine.

=back

=cut


1;
