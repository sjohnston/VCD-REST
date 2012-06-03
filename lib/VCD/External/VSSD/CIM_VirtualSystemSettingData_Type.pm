package VCD::External::VSSD::CIM_VirtualSystemSettingData_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'AutomaticRecoveryAction' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'AutomaticShutdownAction' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'AutomaticStartupAction' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'AutomaticStartupActionDelay' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'AutomaticStartupActionSequenceNumber' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'Caption' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'ConfigurationDataRoot' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'ConfigurationFile' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'ConfigurationID' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'CreationTime' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'Description' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'ElementName' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'InstanceID' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'LogDataRoot' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'Notes' => (is => 'rw', isa => 'ArrayRef[Str]', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'RecoveryFile' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'SnapshotDataRoot' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'SuspendDataRoot' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'SwapFileDataRoot' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'VirtualSystemIdentifier' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');
has_xml 'VirtualSystemType' => (is => 'rw', isa => 'Str', namespace => 'http://schemas.dmtf.org/wbem/wscim/1/cim-schema/2/CIM_VirtualSystemSettingData');



=head1 ATTRIBUTES

=over

=item AutomaticRecoveryAction

=item AutomaticShutdownAction

=item AutomaticStartupAction

=item AutomaticStartupActionDelay

=item AutomaticStartupActionSequenceNumber

=item Caption

=item ConfigurationDataRoot

=item ConfigurationFile

=item ConfigurationID

=item CreationTime

=item Description

=item ElementName

=item InstanceID

=item LogDataRoot

=item Notes

=item RecoveryFile

=item SnapshotDataRoot

=item SuspendDataRoot

=item SwapFileDataRoot

=item VirtualSystemIdentifier

=item VirtualSystemType

=back

=cut


1;
