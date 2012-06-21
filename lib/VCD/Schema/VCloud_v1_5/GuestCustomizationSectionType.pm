package VCD::Schema::VCloud_v1_5::GuestCustomizationSectionType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::External::OVF::Section_Type';

has_xml_attr 'href' => (is => 'ro', xml_is_optional => '1', xml_name => 'href', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'type' => (is => 'ro', xml_is_optional => '1', xml_name => 'type', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Enabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ChangeSid' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'VirtualMachineId' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'JoinDomainEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'UseOrgSettings' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DomainName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DomainUserName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'DomainUserPassword' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AdminPasswordEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AdminPasswordAuto' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'AdminPassword' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ResetPasswordRequired' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'CustomizationScript' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'ComputerName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Link' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::LinkType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a guest customization settings.



=head1 ATTRIBUTES

=over

=item href

modifiable: none

Link to the section.

=item type

modifiable: none

Type of the section.

=item Enabled

modifiable: always

Flag to enable or disable the guest customization section.

=item ChangeSid

modifiable: always

Change the sid if applicable. Used only for Windows OS.

=item VirtualMachineId

modifiable: none

Virtual machine ID to which this customization is applied.

=item JoinDomainEnabled

modifiable: always

Flag to enable or disable joining to a domain.

=item UseOrgSettings

modifiable: always

Flag to use organization settings. Valid only if JoinDomainEnabled is set.

=item DomainName

modifiable: always

Domain name to join to. Valid only if JoinDomainEnabled is set.

=item DomainUserName

modifiable: always

Domain user name to join to. Valid only if JoinDomainEnabled is set.

=item DomainUserPassword

modifiable: always

Domain user password to join to. Valid only if JoinDomainEnabled is set.

=item AdminPasswordEnabled

modifiable: always

Flag to enable or disable admin password use.

=item AdminPasswordAuto

modifiable: always

Flag to set admin password to auto generation. Valid only if
AdminPasswordEnabled is set.

=item AdminPassword

modifiable: always

Set the admin password explicitly. Valid only if AdminPasswordEnabled is
set and AdminPasswordAuto is false.

=item ResetPasswordRequired

modifiable: always

Flag to require reseting of password. Valid only if AdminPasswordEnabled is
set.

=item CustomizationScript

modifiable: always

Script to run on guest customization. You could use xml escape sequence
&amp;#13; to make multiple lines script. The script could contain any
UNICODE symbol by specifying its number in format &amp;#xxxx; where xxxx is
the number. The predefined symbols in the XML are: * & &amp;amp; * <
&amp;lt; * > &amp;gt; * " &amp;quot; * ' &amp;apos;

=item ComputerName

modifiable: always

Computer name to use for guest customization.

=item Link

modifiable: none

Link an operation over the section.

=back

=cut


1;
