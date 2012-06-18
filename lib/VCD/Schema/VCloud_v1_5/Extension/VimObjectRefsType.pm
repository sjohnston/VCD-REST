package VCD::Schema::VCloud_v1_5::Extension::VimObjectRefsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'VimObjectRef' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

List of VimObjectRef elements.



=head1 ATTRIBUTES

=over

=item VimObjectRef

modifiable: none

A reference to a vSphere object.

=back

=cut


1;
