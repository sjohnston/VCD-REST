package VCD::External::OVF::ProductSection_Type;

use Moose;

use VCD::HasXML;

extends 'VCD::External::OVF::Section_Type';

has_xml 'class' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'class');
has_xml 'instance' => (is => 'rw', namespace => 'http://schemas.dmtf.org/ovf/envelope/1', xml_name => 'instance');
has_xml 'Product' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Vendor' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Version' => (is => 'rw', isa => 'VCD::External::CIM::cimString', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'FullVersion' => (is => 'rw', isa => 'VCD::External::CIM::cimString', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'ProductUrl' => (is => 'rw', isa => 'VCD::External::CIM::cimString', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'VendorUrl' => (is => 'rw', isa => 'VCD::External::CIM::cimString', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'AppUrl' => (is => 'rw', isa => 'VCD::External::CIM::cimString', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Icon' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::ProductSection_Type_Icon]', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Category' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Property' => (is => 'rw', isa => 'VCD::External::OVF::ProductSection_Type_Property', namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

=head1 DESCRIPTION

Product information for a virtual appliance

=head1 DESCRIPTION

Properties for application-level customization



=head1 ATTRIBUTES

=over

=item class

Property identifier prefix

=item instance

Property identifier suffix

=item Product

Name of product

=item Vendor

Name of product vendor

=item Version

Product version, short form

=item FullVersion

Product version, long form

=item ProductUrl

URL resolving to product description

=item VendorUrl

URL resolving to vendor description

=item AppUrl

Experimental: URL resolving to deployed product instance

=item Icon

Experimental: Display icon for product

=item Category

Property grouping delimiter

=item Property

Property element

=back

=cut


1;
