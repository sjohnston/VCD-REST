package VCD::Schema::VCloud_v1_5::AdminVdcType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VdcType';

has_xml 'ResourceGuaranteedMemory' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ResourceGuaranteedCpu' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VCpuInMhz' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsThinProvision' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'NetworkPoolReference' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ProviderVdcReference' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'UsesFastProvisioning' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Provides an administrative view of a vDC. Includes all members of the Vdc
element, and adds several elements that can be viewed and modified only by
administrators.



=head1 ATTRIBUTES

=over

=item ResourceGuaranteedMemory

=head1 API

Available Since API: 1.0

modifiable: always

Percentage of allocated memory resources guaranteed to vApps deployed in
this vDC. For example, if this value is 0.75, then 75% of allocated
resources are guaranteed. Required when AllocationModel is AllocationVApp
or AllocationPool. Value defaults to 1.0 if the element is empty. Indicates
how much VMs memory can be squeezed under the pay-per-vApp model. A factor
of 1 means that a VM is guaranteed to get the resources it wants. A factor
of 0.75 for example, means that only 75% of the resources are guaranteed.

=item ResourceGuaranteedCpu

=head1 API

Available Since API: 1.0

modifiable: always

Percentage of allocated CPU resources guaranteed to vApps deployed in this
vDC. For example, if this value is 0.75, then 75% of allocated resources
are guaranteed. Required when AllocationModel is AllocationVApp or
AllocationPool. Value defaults to 1.0 if the element is empty. Indicates
how much VMs CPU can be squeezed under the pay-per-vApp model. A factor of
1 means that a VM is guaranteed to get the resources it wants. A factor of
0.75 for example, means that only 75% of the resources are guaranteed.

=item VCpuInMhz

=head1 API

Available Since API: 1.0

modifiable: always

This is the cpu rating for any virtual CPU that is allocted to a VM in a
AllocationVApp vDC. This is a clock frequency, in Megahertz, for each
virtual CPU core provisioned from this vDC.

=item IsThinProvision

modifiable: always

Boolean to request thin provisioning. Request will be honored only if the
underlying datastore supports it. Thin provisioning saves storage space by
committing it on demand. This allows over-allocation of storage.

=item NetworkPoolReference

modifiable: always

Reference to a network pool in the provider vDC.

=item ProviderVdcReference

modifiable: always

A reference to the ProviderVdc from which this vDC is provisioned.

=item UsesFastProvisioning

modifiable: always

Boolean to request fast provisioning. Request will be honored only if the
underlying datastore supports it. Fast provisioning can reduce the time it
takes to create virtual machines by using vSphere linked clones. If you
disable fast provisioning, all provisioning operations will result in full
clones.

=back

=cut


1;
