package VCD::VCloud_1_5::SyslogServerSettingsType;

use Moose;

use VCD::HasXML;

with 'VCD::HasXMLTrait';

has_xml 'SyslogServerIp1' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::IpAddressType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'SyslogServerIp2' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::IpAddressType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::IpAddressType;


=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Syslog server settings. If logging is configured for firewall rules, the
logs will be directed to these syslog servers.



=head1 ATTRIBUTES

=over

=item SyslogServerIp1

modifiable: always

Primary syslog server.

=item SyslogServerIp2

modifiable: always

Secondary syslog server.

=back

=cut


1;
