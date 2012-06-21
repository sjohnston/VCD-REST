package VCD::Schema::VCloud_v1_5::Extension::LicensingManagedServerType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'cpu' => (is => 'ro', xml_name => 'cpu', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml_attr 'memoryInstalled' => (is => 'ro', xml_name => 'memoryInstalled', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VimObjectRef' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::VimObjectRefType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Captures a single set of metrics for a managed server for a given sample.



=head1 ATTRIBUTES

=over

=item cpu

modifiable: none

Number of CPUs in the server.

=item memoryInstalled

modifiable: none

Installed memory, in MB, in the server.

=item VimObjectRef

modifiable: none

Managed object reference of the server.

=back

=cut


1;
