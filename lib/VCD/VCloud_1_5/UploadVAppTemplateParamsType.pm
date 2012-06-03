package VCD::VCloud_1_5::UploadVAppTemplateParamsType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ParamsType';

has_xml 'transferFormat' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'transferFormat');
has_xml 'manifestRequired' => (is => 'rw', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'manifestRequired');

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
