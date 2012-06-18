package VCD::Schema::VCloud_v1_5::Extension::BrandingSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'CompanyName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Theme' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AboutCompanyUrl' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SupportUrl' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SignUpUrl' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ForgotUserNameOrPasswordURL' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

BrandingSettings stores all information about how to brand the product for
vCloud service, like provider name, logo etc.



=head1 ATTRIBUTES

=over

=item CompanyName

modifiable: always

Your company name will be displayed in the header and footer.

=item Theme

modifiable: always

The online help provides information on how you can customize the VCD user
interface theme.

=item AboutCompanyUrl

modifiable: always

This URL provides information, such as your company information,
copyrights, legal notices, and so on about the VCD service you are hosting.
The company name in the footer of this application appear as a link using
this URL.

=item SupportUrl

modifiable: always

This URL provides VCD support information. A Support link, using this URL,
will be inserted into the Help menu in the banner of the application for
all Organization Users.

=item SignUpUrl

modifiable: always

This URL links to a Web site that allows a user to sign up for this VCD and
get information about your VCD, request or create a new organization, and
so on. A sign-up link, using this URL, will be inserted into the Login page
for this application.

=item ForgotUserNameOrPasswordURL

modifiable: always

This URL links to a Web site that allows the user to recover a forgotten
user name or password. A password recovery link, using this URL, will be
inserted into the Login page for this application.

=back

=cut


1;
