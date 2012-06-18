package VCD::Schema::VCloud_v1_5::Extension::ImportVmAsVAppTemplateParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ParamsType';

has_xml_attr 'sourceMove' => (is => 'rw', xml_is_optional => '1', xml_name => 'sourceMove', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml_attr 'goldMaster' => (is => 'rw', xml_is_optional => '1', xml_name => 'goldMaster', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VmName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VAppScopedLocalId' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ComputerName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VmMoRef' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Vdc' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Catalog' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');

use VCD::Schema::VCloud_v1_5::ReferenceType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Parameters to import a virtual machine as a vApp template.



=head1 ATTRIBUTES

=over

=item sourceMove

modifiable: always

Set to true to delete the source object after the import is complete.

=item goldMaster

modifiable: always

=head1 API

Available Since API: 1.5

Attribute to specify if template is gold master, the default is false.

=item VmName

modifiable: always

Name to be used for imported VM.

=item VAppScopedLocalId

modifiable: always

vApp scoped local id to be used for imported VM.

=item ComputerName

modifiable: always

Computer name to be used for imported VM.

=item VmMoRef

modifiable: always

Managed object reference of VM to import.

=item Vdc

modifiable: always

Target vDC for imported vApp template.

=item Catalog

modifiable: always

Catalog in which the imported vApp template will be listed.

=back

=cut


1;
