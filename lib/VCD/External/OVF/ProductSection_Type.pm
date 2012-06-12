package VCD::External::OVF::ProductSection_Type;

use Moose;

use VCD::Schema;

extends 'VCD::External::OVF::Section_Type';

has_xml_attr 'class' => (is => 'rw', xml_is_optional => '1', xml_name => 'class', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml_attr 'instance' => (is => 'rw', xml_is_optional => '1', xml_name => 'instance', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Product' => (is => 'rw', isa => 'Maybe[VCD::External::OVF::Msg_Type]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Vendor' => (is => 'rw', isa => 'Maybe[VCD::External::OVF::Msg_Type]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Version' => (is => 'rw', isa => 'Maybe[VCD::External::CIM::cimString]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'FullVersion' => (is => 'rw', isa => 'Maybe[VCD::External::CIM::cimString]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'ProductUrl' => (is => 'rw', isa => 'Maybe[VCD::External::CIM::cimString]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'VendorUrl' => (is => 'rw', isa => 'Maybe[VCD::External::CIM::cimString]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'AppUrl' => (is => 'rw', isa => 'Maybe[VCD::External::CIM::cimString]', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Icon' => (is => 'rw', isa => 'ArrayRef[VCD::External::OVF::ProductSection_Type_Icon]', xml_maximum => 'unbounded', xml_minimum => '0', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Category' => (is => 'rw', isa => 'VCD::External::OVF::Msg_Type', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');
has_xml 'Property' => (is => 'rw', isa => 'VCD::External::OVF::ProductSection_Type_Property', xml_namespace => 'http://schemas.dmtf.org/ovf/envelope/1');

use VCD::External::OVF::ProductSection_Type_Property;
use VCD::External::OVF::ProductSection_Type_Icon;
use VCD::External::CIM::cimString;
use VCD::External::OVF::Msg_Type;


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
