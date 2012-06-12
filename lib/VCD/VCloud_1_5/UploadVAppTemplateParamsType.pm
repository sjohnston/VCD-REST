package VCD::VCloud_1_5::UploadVAppTemplateParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::ParamsType';

has_xml_attr 'transferFormat' => (is => 'rw', xml_is_optional => '1', xml_name => 'transferFormat', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml_attr 'manifestRequired' => (is => 'rw', xml_is_optional => '1', xml_name => 'manifestRequired', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents vApp Template upload parameters.



=head1 ATTRIBUTES

=over

=item transferFormat

modifiable: always

Reserved. Unimplemented.

=item manifestRequired

modifiable: always

Flag to require OVF manifest or not, default value is false.

=back

=cut


1;
