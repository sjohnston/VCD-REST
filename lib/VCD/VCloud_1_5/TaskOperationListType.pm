package VCD::VCloud_1_5::TaskOperationListType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ResourceType';

has_xml 'Operation' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 DESCRIPTION

List of operation names.

=head1 API

Available Since API: 1.5



=head1 ATTRIBUTES

=over

=item Operation

=head1 API

Available Since API: 1.5

An operation that will be enabled as a blocking task. See the vCloud API
Programming Guide for the operation names.

=back

=cut


1;
