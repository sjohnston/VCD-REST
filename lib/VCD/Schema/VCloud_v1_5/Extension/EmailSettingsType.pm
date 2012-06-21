package VCD::Schema::VCloud_v1_5::Extension::EmailSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'SenderEmailAddress' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'EmailSubjectPrefix' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AlertEmailToAllAdmins' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AlertEmailTo' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SmtpSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::Extension::SmtpSettingsType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represent all the email related settings in the system.



=head1 ATTRIBUTES

=over

=item SenderEmailAddress

modifiable: always

Sender email address in an email notification or alert.

=item EmailSubjectPrefix

modifiable: always

The prefix used in the email subject line for all email notifications and
alerts from the system.

=item AlertEmailToAllAdmins

modifiable: always

A flag to indicate the choice between sending alert emails to all system
administrators in the system and designated list of email recipients.

=item AlertEmailTo

modifiable: always

A comma separated email addresses to send all alert messages to.

=item SmtpSettings

The SMTP server for email notifications and alerts.

=back

=cut


1;
