package VCD::VCloud_1_5::FilesListType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'File' => (is => 'ro', isa => 'ArrayRef[VCD::VCloud_1_5::FileType]', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');

use VCD::VCloud_1_5::FileType;


=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

Represents a list of files to be transferred (uploaded or downloaded).



=head1 ATTRIBUTES

=over

=item File

modifiable: none

A file to be transferred (uploaded or downloaded).

=back

=cut


1;
