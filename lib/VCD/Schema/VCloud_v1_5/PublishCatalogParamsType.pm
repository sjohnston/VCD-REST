package VCD::Schema::VCloud_v1_5::PublishCatalogParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::VCloudExtensibleType';

has_xml 'IsPublished' => (is => 'rw', isa => 'Maybe[Str]', xml_maximum => '1', xml_minimum => '1', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Parameters used when publishing catalogs.



=head1 ATTRIBUTES

=over

=item IsPublished

modifiable: always

A flag that controls whether the catalog will be published or not.

=back

=cut


1;
