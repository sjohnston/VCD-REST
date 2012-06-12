package VCD::External::OVF::Env::PlatformSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::External::OVF::Env::Section_Type';

has_xml 'Kind' => (is => 'rw', isa => 'Maybe[VCD::External::CIM::cimString]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');
has_xml 'Version' => (is => 'rw', isa => 'Maybe[VCD::External::CIM::cimString]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');
has_xml 'Vendor' => (is => 'rw', isa => 'Maybe[VCD::External::CIM::cimString]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');
has_xml 'Locale' => (is => 'rw', isa => 'Maybe[VCD::External::CIM::cimString]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');
has_xml 'Timezone' => (is => 'rw', isa => 'Maybe[Str]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/environment/1');

use VCD::External::CIM::cimString;


=head1 DESCRIPTION

Information about deployment platform



=head1 ATTRIBUTES

=over

=item Kind

Experimental: Deployment platform description

=item Version

Experimental: Deployment platform version

=item Vendor

Experimental: Deployment platform vendor

=item Locale

Experimental: Current locale

=item Timezone

Experimental: Current timezone offset in minutes from UTC. Time zones east
of Greenwich are positive and time zones west of Greenwich are negative.

=back

=cut


1;
