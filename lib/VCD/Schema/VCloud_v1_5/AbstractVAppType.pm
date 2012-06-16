package VCD::Schema::VCloud_v1_5::AbstractVAppType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceEntityType';

has_xml_attr 'deployed' => (is => 'ro', xml_is_optional => '1', xml_name => 'deployed', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VAppParent' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::Schema::VCloud_v1_5::ReferenceType;


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
