package VCD::External::OVF::VirtualDiskDesc_Type;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml_attr 'diskId' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'diskId');
has_xml_attr 'fileRef' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'fileRef');
has_xml_attr 'capacity' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'capacity');
has_xml_attr 'capacityAllocationUnits' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'capacityAllocationUnits');
has_xml_attr 'format' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'format');
has_xml_attr 'populatedSize' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'populatedSize');
has_xml_attr 'parentRef' => (is => 'rw', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'parentRef');



=head1 DESCRIPTION

Type for virtual disk descriptor



=head1 ATTRIBUTES

=over

=item diskId

Identifier for virtual disk

=item fileRef

Reference to virtual disk content. If not specified a blank virtual disk is
created of size given by capacity attribute

=item capacity

Virtual disk capacity, can be specified as either an xs:long size or as a
reference to a property using ${property_name}.

=item capacityAllocationUnits

Unit of allocation for ovf:capacity. If not specified default value is
bytes. Value shall match a recognized value for the UNITS qualifier in
DSP0004.

=item format

Format of virtual disk given as a URI that identifies the disk type

=item populatedSize

Estimated populated size of disk in bytes

=item parentRef

Reference to potential parent disk

=back

=cut


1;
