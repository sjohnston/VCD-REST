package VCD::REST;

use Moose;

use Data::Dumper;
use XML::LibXML::Simple qw(XMLin);
use VCD::VCloud_1_5::SessionType;
use HTTP::Request;
use LWP::UserAgent;

has ua => (
    is       => 'ro',
    isa      => 'LWP::UserAgent',
    lazy     => 1,
    builder  => '_build_ua',
);

has session => (
    is       => 'rw',
    isa      => 'VCD::VCloud_1_5::SessionType',
    lazy     => 1,
    builder  => '_build_session',
);

has base_href => (
    is       => 'ro',
    isa      => 'Str',
    lazy     => 1,
    builder  => '_build_href',
);

has password => (
    is       => 'rw',
    isa      => 'Str',
);

has auth => (
    is       => 'rw',
    isa      => 'Str',
);

has user_name => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has host => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

sub _build_ua {
    my $ua = LWP::UserAgent->new;

    $ua->default_header('Accept-Encoding' => scalar HTTP::Message::decodable());
    $ua->default_header('Accept' => 'application/*+xml;version=1.5');

    return $ua;
}

sub _build_href {
    my $self = shift;
    return 'https://' . $self->host . '/api';
}

sub url {
    my ($self, $action) = @_;
    my $url = $self->base_href;

    if ($action =~ /^https?:/) {
        return $action;
    }
    elsif ($action) {
        return "$url/$action";
    }

    return $url;
}

sub _build_session {
    my $self = shift;

    my $req;
    if ($self->auth) {
        $req = $self->request(POST => $self->url('sessions'));
    }
    else {
        $req = HTTP::Request->new(POST => $self->url('sessions'));
        $req->authorization_basic($self->user_name, $self->password);
    }

    my $res = $self->ua->request($req);

    unless ($res->is_success) {
        die $res->status_line;
    }
    $self->auth( $res->header('x-vcloud-authorization') );

    my $args = XMLin($res->decoded_content, NsExpand => 1, KeyAttr => [], KeepRoot => 1);

    my ($name) = keys %$args;
    return VCD::VCloud_1_5::SessionType->new( xml_name => $name, xml_hash => $args->{$name}, vcd_rest => $self );
}

sub request {
    my $self = shift;

    my $req = HTTP::Request->new(@_);
    $req->header('x-vcloud-authorization', $self->auth);

    return $req;
}

sub type {
    my ($self, $type) = @_;

    if ($type =~ m{/}) {
        return $type;
    }

    return "application/vnd.vmware.vcloud.$type+xml";
}

sub get {
    my ($self, $href) = @_;

    my $req = $self->request(GET => $href);

    my $res = $self->ua->request($req);

    unless ($res->is_success) {
        die $res->status_line;
    }

    return XMLin($res->decoded_content, NsExpand => 1, KeyAttr => [], KeepRoot => 1);
}

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

VCD::REST - Object Oriented access to the VMware vCloud REST API

=head1 EXAMPLE

    use VCD::REST;
    use VCD::VCloud_1_5::OrgType;

    my $vcd = VCD::REST->new(host => $host, user_name => $username, password => $password);
    my $href = $vcd->session->org_list->[0]->href;
    my $org = VCD::VCloud_1_5::OrgType->new( vcd_rest => $vcd, href => $href );
    print $org->FullName;

=cut
