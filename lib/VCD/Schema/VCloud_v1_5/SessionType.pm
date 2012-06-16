package VCD::Schema::VCloud_v1_5::SessionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml_attr 'user' => (is => 'ro', xml_name => 'user', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'org' => (is => 'ro', xml_name => 'org', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents a vCloud Session.



=head1 ATTRIBUTES

=over

=item user

modifiable: none

The name of the user that owns the session

=item org

modifiable: none

The name of the user's organization

=back

=cut


1;
