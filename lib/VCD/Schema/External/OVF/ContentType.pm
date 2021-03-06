package VCD::Schema::External::OVF::ContentType;

use Moose;

use VCD::Schema;

extends 'VCD::Schema::Type';

has_xml_attr 'id' => (is => 'rw', xml_name => 'id', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Info' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::MsgType]', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Name' => (is => 'rw', isa => 'Maybe[VCD::Schema::External::OVF::MsgType]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Section' => (is => 'rw', isa => 'ArrayRef[Str]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');


__PACKAGE__->meta->make_immutable;

=head1 DESCRIPTION

Base class for content



=head1 ATTRIBUTES

=over

=item id

=item Info

Info element describes the meaning of the content, this is typically shown
if the type is not understood by an application

=item Name

An optional localizable display name of the content

=item Section

Content body is a list of Sections

=back

=cut


1;
