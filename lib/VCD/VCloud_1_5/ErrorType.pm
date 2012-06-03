package VCD::VCloud_1_5::ErrorType;

use Moose;

use VCD::HasXML;

extends 'VCD::VCloud_1_5::VCloudExtensibleType';

has_xml 'message' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'message');
has_xml 'majorErrorCode' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'majorErrorCode');
has_xml 'minorErrorCode' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'minorErrorCode');
has_xml 'vendorSpecificErrorCode' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'vendorSpecificErrorCode');
has_xml 'stackTrace' => (is => 'ro', namespace => 'http://www.vmware.com/vcloud/v1.5', xml_name => 'stackTrace');

=head1 API

Available Since API: 0.9

=head1 DESCRIPTION

The standard error message type used in the vCloud REST API.



=head1 ATTRIBUTES

=over

=item message

modifiable: none

An one line, human-readable message describing the error that occurred.

=item majorErrorCode

modifiable: none

The class of the error. Matches the HTTP status code.

=item minorErrorCode

modifiable: none

Specific API error code (for example - can indicate that vApp power on
failed by some reason)

=item vendorSpecificErrorCode

modifiable: none

A vendor/implementation specific error code that point to specific
modules/parts of the code and can make problem diagnostics easier.

=item stackTrace

=head1 API

Available Since API: 1.0

modifiable: none

The stack trace of the exception which when examined might make problem
diagnostics easier.

=back

=cut


1;
