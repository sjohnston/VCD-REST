package VCD::VCloud_1_5::AccessSettingType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'Subject' => (is => 'rw', isa => 'VCD::VCloud_1_5::ReferenceType', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AccessLevel' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Specifies who can access the resource.



=head1 ATTRIBUTES

=over

=item Subject

modifiable: always

The user or group to whom these settings apply.

=item AccessLevel

modifiable: always

The access level for the subject. One of: FullControl, Change, ReadOnly

=back

=cut


1;
