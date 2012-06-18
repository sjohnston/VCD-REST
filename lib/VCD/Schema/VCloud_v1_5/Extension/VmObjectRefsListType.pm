package VCD::Schema::VCloud_v1_5::Extension::VmObjectRefsListType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'numberOfPages' => (is => 'ro', xml_is_optional => '1', xml_name => 'numberOfPages', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml_attr 'page' => (is => 'ro', xml_is_optional => '1', xml_name => 'page', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VmObjectRef' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::Extension::VmObjectRefType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::VmObjectRefType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

A list of references to virtual machines in vCenter inventory.



=head1 ATTRIBUTES

=over

=item numberOfPages

modifiable: none

The total number of pages in the response.

=item page

modifiable: none

The current page number. The first page is page number 1.

=item VmObjectRef

modifiable: none

A reference to a virtual machine in vCenter inventory.

=back

=cut


1;
