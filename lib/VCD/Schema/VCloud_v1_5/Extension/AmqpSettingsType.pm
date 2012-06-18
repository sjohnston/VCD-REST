package VCD::Schema::VCloud_v1_5::Extension::AmqpSettingsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml 'AmqpHost' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AmqpPort' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AmqpUsername' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AmqpPassword' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AmqpExchange' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AmqpVHost' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'AmqpUseSSL' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Represents the settings for the AMQP broker.

=head1 API

Available Since API: 1.5



=head1 ATTRIBUTES

=over

=item AmqpHost

modifiable: always

Hostname of the AMQP broker.

=item AmqpPort

modifiable: always

Port of the AMQP broker.

=item AmqpUsername

modifiable: always

Username for the AMQP broker.

=item AmqpPassword

modifiable: always

Password for the AMQP broker.

=item AmqpExchange

modifiable: always

AMQP exchange for publishing.

=item AmqpVHost

modifiable: always

Virtual host for the AMQP broker.

=item AmqpUseSSL

modifiable: always

Use SSL for communication with the AMQP broker.

=back

=cut


1;
