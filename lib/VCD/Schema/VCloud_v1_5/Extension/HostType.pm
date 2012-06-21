package VCD::Schema::VCloud_v1_5::Extension::HostType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::EntityType';

has_xml 'Ready' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Available' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Enabled' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Busy' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'EnableHostForHostSpanning' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'CpuType' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'NumOfCpusPackages' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'NumOfCpusLogical' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'CpuTotal' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'MemUsed' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'MemTotal' => (is => 'ro', isa => 'Maybe[Str]', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'HostOsName' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'HostOsVersion' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SystemMessages' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VimPropertyPageUrl' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VmMoRef' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Read only representation of one host in a vSphere server.



=head1 ATTRIBUTES

=over

=item Ready

modifiable: none

Indicates whether the host is ready for use.

=item Available

modifiable: none

Indicates whether the host is available.

=item Enabled

modifiable: none

Indicated whether the host is enabled for use.

=item Busy

modifiable: none

Indicates whether the host is busy.

=item EnableHostForHostSpanning

modifiable: none

Indicates whether the host is enabled for host spanning.

=item CpuType

modifiable: none

The CPU type of the host.

=item NumOfCpusPackages

modifiable: none

How many hardware CPUs the host has.

=item NumOfCpusLogical

modifiable: none

How many logical CPUs the host has.

=item CpuTotal

modifiable: none

The total CPU power measured in MHz.

=item MemUsed

modifiable: none

The used memory in the host.

=item MemTotal

modifiable: none

The total memory in the host.

=item HostOsName

modifiable: none

OS name of the host.

=item HostOsVersion

modifiable: none

OS version of the host.

=item SystemMessages

modifiable: none

System messages of the host.

=item VimPropertyPageUrl

modifiable: none

URL to the VIM property page of the host.

=item VmMoRef

modifiable: none

The host moref.

=back

=cut


1;
