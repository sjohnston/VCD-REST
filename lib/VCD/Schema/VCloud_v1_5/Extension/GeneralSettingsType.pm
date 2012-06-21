package VCD::Schema::VCloud_v1_5::Extension::GeneralSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'AbsoluteSessionTimeoutMinutes' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ActivityLogDisplayDays' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ActivityLogKeepDays' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AllowOverlappingExtNets' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ChargebackEventsKeepDays' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ChargebackTablesCleanupJobTimeInSeconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ConsoleProxyExternalAddress' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'HostCheckDelayInSeconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'HostCheckTimeoutSeconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'InstallationId' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'IpReservationTimeoutSeconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SyslogServerSettings' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::SyslogServerSettingsType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'LoginNameOnly' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'PrePopDefaultName' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'QuarantineEnabled' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'QuarantineResponseTimeoutSeconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'RestApiBaseUri' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SessionTimeoutMinutes' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'ShowStackTraces' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SyncStartDate' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SyncIntervalInHours' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SystemExternalAddress' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'TransferSessionTimeoutSeconds' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VerifyVcCertificates' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VcTruststorePassword' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VcTruststoreContents' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VcTruststoreType' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VmrcVersion' => (is => 'ro', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'VerifyVsmCertificates' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Represents the general part of the system settings.

=head1 API

Available Since API: 1.5



=head1 ATTRIBUTES

=over

=item AbsoluteSessionTimeoutMinutes

modifiable: always

Absolute number of minutes to timeout client session. This will trigger
session timeout even when there are user activities.

=item ActivityLogDisplayDays

modifiable: always

Days of activities to be displayed to the users.

=item ActivityLogKeepDays

modifiable: always

Days of activities to keep in the system.

=item AllowOverlappingExtNets

modifiable: always

Boolean flag that allows/disallows creation of multiple external networks
on the same LAN segment.

=item ChargebackEventsKeepDays

modifiable: always

Days for which events are to be kept in Chargeback Tables.

=item ChargebackTablesCleanupJobTimeInSeconds

modifiable: always

Time of the day at which the job should run.

=item ConsoleProxyExternalAddress

modifiable: always

Load balancer address configured for Console Proxy. Leave empty to clear
the address.

=item HostCheckDelayInSeconds

modifiable: always

Frequency of checking the host status

=item HostCheckTimeoutSeconds

modifiable: always

Number of seconds to wait for a response from a host before marking it as
hung.

=item InstallationId

modifiable: none

The installation Id. The acceptable value is between 0 and 63.

=item IpReservationTimeoutSeconds

modifiable: always

Number of seconds to keep released IP addresses on hold before making them
available for allocation again. This is typically set to 2 hours to allow
old entries to expire from client ARP tables.

=item SyslogServerSettings

modifiable: always

Default syslog server settings for networks. If logging is configured for
firewall rules, the logs will be directed to these syslog servers. If you
change these values, you must synchronize the syslog server settings for
each network in the system by running its syncSyslogServerSettings action.

=item LoginNameOnly

modifiable: always

System login policy setting (automatic login or remember user name only).

=item PrePopDefaultName

modifiable: always

Pre-populate default configuration and virtual machine name.

=item QuarantineEnabled

modifiable: always

Flag to indicate whether uploads should be quarantined.

=item QuarantineResponseTimeoutSeconds

modifiable: always

The length of time, in seconds, before a quarantined transfer is
'timedout'.

=item RestApiBaseUri

modifiable: always

Load balancer address configured for the REST API. Leave empty to clear the
address.

=item SessionTimeoutMinutes

modifiable: always

Number of minutes to timeout client session.

=item ShowStackTraces

modifiable: always

Boolean flag to turn on/off the display of exception stack traces.

=item SyncStartDate

modifiable: always

Number of minutes to timeout client session.

=item SyncIntervalInHours

modifiable: always

LDAP sync repeats interval time in hours.

=item SystemExternalAddress

modifiable: always

The systemExternalAddress is the external web link address to system. Leave
empty to clear the address.

=item TransferSessionTimeoutSeconds

modifiable: always

Transfer sessions time out in this number of seconds.

=item VerifyVcCertificates

modifiable: always

Boolean flag to apply a strict trust check to vCenter certificates.

=item VcTruststorePassword

modifiable: always

Password for the vCenter truststore, if used. If empty or no password is
passed then no update is performed.

=item VcTruststoreContents

modifiable: always

vCenter truststore bytes (if used).

=item VcTruststoreType

modifiable: always

vCenter truststore type (JKS, JCEKS, PKCS12).

=item VmrcVersion

modifiable: none

VMRC version.

=item VerifyVsmCertificates

modifiable: always

Boolean flag to apply a strict trust check to vShield Manager certificates.

=back

=cut


1;
