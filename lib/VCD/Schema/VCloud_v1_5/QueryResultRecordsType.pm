package VCD::Schema::VCloud_v1_5::QueryResultRecordsType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::VCloud_v1_5::ContainerType';

has_xml 'Record' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/v1.5');



__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.5

=head1 DESCRIPTION

Represents the results from a vCloud query as records.



=head1 ATTRIBUTES

=over

=item Record

modifiable: always
                            

A record representing a query result.

=back

=cut


1;
