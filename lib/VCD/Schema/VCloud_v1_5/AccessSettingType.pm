package VCD::Schema::VCloud_v1_5::AccessSettingType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'Subject' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AccessLevel' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::ReferenceType;


__PACKAGE__->meta->make_immutable;

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
