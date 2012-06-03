package VCD::VCloud_1_5::OrgEmailSettingsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'IsDefaultSmtpServer' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsDefaultOrgEmail' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'FromEmailAddress' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DefaultSubjectPrefix' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'IsAlertEmailToAllAdmins' => (is => 'rw', isa => 'Str', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AlertEmailTo' => (is => 'ro', isa => 'ArrayRef[Str]', namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'SmtpServerSettings' => (is => 'rw', isa => 'VCD::VCloud_1_5::SmtpServerSettingsType', namespace => 'http://www.vmware.com/vcloud/v1.5');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Defines the email settings for an organization.



=head1 ATTRIBUTES

=over

=item IsDefaultSmtpServer

modifiable: always

True if this organization uses the system default SMTP server.

=item IsDefaultOrgEmail

modifiable: always

True if this organization uses the system default email properties.

=item FromEmailAddress

modifiable: always

If IsDefaultOrgEmail is false, specifies the sender s email address that
appears in email notifications.

=item DefaultSubjectPrefix

modifiable: always

If IsDefaultOrgEmail is false, specifies a prefix for system email
notifications.

=item IsAlertEmailToAllAdmins

modifiable: always

True if system email notifications should be sent to all users who have the
Administrator role.

=item AlertEmailTo

modifiable: none

If IsAlertEmailToAllAdmins is false, specifies a list of users to receive
system email notifications.

=item SmtpServerSettings

modifiable: always

If IsDefaultSmtpServer is false, this element specifies connection details
for an SMTP server to use.

=back

=cut


1;
