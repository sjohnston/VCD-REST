package VCD::Schema::VCloud_v1_5::SmtpServerSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'IsUseAuthentication' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Host' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Username' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Password' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Specifies connection details for the organization s SMTP server. If
IsDefaultSmtpServer (in OrgEmailSettings) is false, the SmtpServerSettings
element is taken into account.



=head1 ATTRIBUTES

=over

=item IsUseAuthentication

modifiable: always

True if the SMTP server requires authentication.

=item Host

modifiable: always

Hostname of the SMTP server.

=item Username

modifiable: always

Username to use when logging in to the SMTP service. (Required if
IsUseAuthentication is True).

=item Password

modifiable: always

Password for the user identified by Username. This value is never returned
by GET. It is inspected on create and modify. On modify, the absence of
this element indicates that the password should not be changed. Required if
IsUseAuthentication is true.

=back

=cut


1;
