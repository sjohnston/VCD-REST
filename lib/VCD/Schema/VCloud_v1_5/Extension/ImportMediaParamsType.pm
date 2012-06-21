package VCD::Schema::VCloud_v1_5::Extension::ImportMediaParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ParamsType';

has_xml_attr 'sourceMove' => (is => 'rw', xml_is_optional => '1', xml_name => 'sourceMove', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'DatastoreMoRef' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'SourcePath' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Vdc' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');
has_xml 'Catalog' => (is => 'rw', isa => 'Maybe[VCD::Schema::VCloud_v1_5::ReferenceType]', xml_maximum => '1', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents parameters to import media from vSphere.



=head1 ATTRIBUTES

=over

=item sourceMove

=head1 API

Available Since API: 1.0

modifiable: always

Set to true to delete the source object after the import is complete.

=item DatastoreMoRef

=head1 API

Available Since API: 1.0

modifiable: always

Managed object reference of the datastore from which media file will be
imported.

=item SourcePath

=head1 API

Available Since API: 1.0

modifiable: always

A full path to media file on the datastore.

=item Vdc

=head1 API

Available Since API: 1.0

modifiable: always

The vDC into which the media will be imported.

=item Catalog

=head1 API

Available Since API: 1.0

modifiable: always

The catalog in which the imported media will be listed.

=back

=cut


1;
