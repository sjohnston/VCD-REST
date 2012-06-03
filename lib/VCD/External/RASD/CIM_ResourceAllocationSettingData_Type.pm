package VCD::External::RASD::CIM_ResourceAllocationSettingData_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'Address' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'AddressOnParent' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'AllocationUnits' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'AutomaticAllocation' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'AutomaticDeallocation' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'Caption' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'Connection' => (is => 'rw', isa => 'ArrayRef[Str]', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'ConsumerVisibility' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'Description' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'ElementName' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'HostResource' => (is => 'rw', isa => 'ArrayRef[Str]', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'InstanceID' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'Limit' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'MappingBehavior' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'OtherResourceType' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'Parent' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'PoolID' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'Reservation' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'ResourceSubType' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'ResourceType' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'VirtualQuantity' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'VirtualQuantityUnits' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');
has_xml 'Weight' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_ResourceAllocationSettingData');



=head1 ATTRIBUTES

=over

=item Address

=item AddressOnParent

=item AllocationUnits

=item AutomaticAllocation

=item AutomaticDeallocation

=item Caption

=item Connection

=item ConsumerVisibility

=item Description

=item ElementName

=item HostResource

=item InstanceID

=item Limit

=item MappingBehavior

=item OtherResourceType

=item Parent

=item PoolID

=item Reservation

=item ResourceSubType

=item ResourceType

=item VirtualQuantity

=item VirtualQuantityUnits

=item Weight

=back

=cut


1;
