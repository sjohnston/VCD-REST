package VCD::VCloud_1_5::ReferencesType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::ContainerType';

has_xml 'Reference' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



=head1 DESCRIPTION

This is the container for returned elements in referenceView



=head1 ATTRIBUTES

=over

=item Reference

=back

=cut


1;
