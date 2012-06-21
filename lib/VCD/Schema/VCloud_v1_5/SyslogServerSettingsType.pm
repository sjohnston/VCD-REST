package VCD::Schema::VCloud_v1_5::SyslogServerSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'SyslogServerIp1' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'SyslogServerIp2' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

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
