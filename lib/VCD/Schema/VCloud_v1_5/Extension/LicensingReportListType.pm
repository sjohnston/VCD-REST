package VCD::Schema::VCloud_v1_5::Extension::LicensingReportListType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml 'Report' => (is => 'ro', isa => 'ArrayRef[VCD::Schema::VCloud_v1_5::LinkType]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://www.vmware.com/vcloud/extension/v1.5');


__PACKAGE__->meta->make_immutable;

=head1 API

Available Since API: 1.0

=head1 DESCRIPTION

Represents a list of licensing reports.



=head1 ATTRIBUTES

=over

=item Report

modifiable: none

Link to a licensing report.

=back

=cut


1;
