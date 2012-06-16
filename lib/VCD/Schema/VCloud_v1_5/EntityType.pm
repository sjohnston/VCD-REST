package VCD::Schema::VCloud_v1_5::EntityType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ResourceType';

has_xml_attr 'name' => (is => 'rw', xml_name => 'name', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'id' => (is => 'ro', xml_name => 'id', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Description' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Tasks' => (is => 'ro', isa => 'Maybe[VCD::Schema::VCloud_v1_5::TasksInProgressType]', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::Schema::VCloud_v1_5::TasksInProgressType;


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Basic entity type in the vCloud object model. Includes a name, an optional
description, and an optional list of links.



=head1 ATTRIBUTES

=over

=item name

modifiable: always

The name of the entity.

=item id

modifiable: none

The entity identifier, expressed in URN format. The value of this attribute
uniquely identifies the entity, persists for the life of the entity, and is
never reused.

=item Description

modifiable: always

Optional description.

=item Tasks

modifiable: none

A list of queued, running, or recently completed tasks associated with this
entity.

=back

=cut


1;
