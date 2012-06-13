package VCD::VCloud_1_5::CaptureVAppParamsType;

use Moose;

use VCD::Schema;

extends 'VCD::VCloud_1_5::ParamsType';

has_xml 'Source' => (is => 'rw', isa => 'Maybe[VCD::VCloud_1_5::ReferenceType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::VCloud_1_5::ReferenceType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents the parameters for capturing a vApp to a vApp template.



=head1 ATTRIBUTES

=over

=item Source

modifiable: always

Contains the reference to a vApp to capture.

=item Section

modifiable: always

An ovf:Section to configure the captured vAppTemplate.

=back

=cut


1;
