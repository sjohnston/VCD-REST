package VCD::VCloud_1_5::AbstractVAppType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceEntityType';

has_xml 'deployed' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'deployed');
has_xml 'VAppParent' => (is => 'ro', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a base type for VAppType and VmType.



=head1 ATTRIBUTES

=over

=item deployed

=head1 API

Available Since API: 1.0

modifiable: none

Flag indicates if the vApp or VM is deployed.

=item VAppParent

modifiable: none

Reserved. Unimplemented.

=item Section

modifiable: always

Specific ovf:Section with additional information for the vApp.

=back

=cut


1;
