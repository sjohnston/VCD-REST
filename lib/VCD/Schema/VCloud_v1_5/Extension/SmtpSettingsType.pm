package VCD::Schema::VCloud_v1_5::Extension::SmtpSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'UseAuthentication' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SmtpServerName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SmtpServerPort' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ssl' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'UserName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Password' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

The SMTP server for email notifications and alerts.



=head1 ATTRIBUTES

=over

=item UseAuthentication

A flag to indicate if the SMTP requires login authentication. If this flag
is set to true, caller must provide user name and password.

=item SmtpServerName

A host attribute for URL specified to reach the server.

=item SmtpServerPort

A port attribute for URL specified to reach the server.

=item ssl

True if connection is ssl.

=item UserName

Username to login to server. Must be no longer than 128 symbols.

=item Password

Password to login to the server. Must be no longer than 128 symbols.

=back

=cut


1;
