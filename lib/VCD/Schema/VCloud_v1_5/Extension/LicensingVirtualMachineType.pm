package VCD::Schema::VCloud_v1_5::Extension::LicensingVirtualMachineType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'cpu' => (is => 'ro', xml_name => 'cpu', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml_attr 'memory' => (is => 'ro', xml_name => 'memory', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VimObjectRef' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a single set of virtual machine metrics.



=head1 ATTRIBUTES

=over

=item cpu

modifiable: none

Virtual machine CPUs use.

=item memory

modifiable: none

Virtual machine memory use.

=item VimObjectRef

modifiable: none

Managed object reference of the virtual machine.

=back

=cut


1;
