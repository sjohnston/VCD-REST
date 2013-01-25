package VCD::REST;

use Moose;

use XML::LibXML::Simple qw(XMLin);
use HTTP::Request;
use LWP::UserAgent;
use Class::Load qw(load_class);
use List::Util qw(first);
use VCD::Schema::TypeMap;

has ua => (
    is       => 'ro',
    isa      => 'LWP::UserAgent',
    lazy     => 1,
    builder  => '_build_ua',
);

has session => (
    is       => 'rw',
    does     => 'VCD::Roles::SessionType',
);

has base_href => (
    is       => 'ro',
    isa      => 'Str',
    lazy     => 1,
    builder  => '_build_href',
);

has api_version => (
    is       => 'ro',
    isa      => 'Str',
    default  => '1.5',
);

has password => (
    is       => 'rw',
    isa      => 'Str',
);

has auth => (
    is       => 'rw',
    isa      => 'Str',
    clearer  => 'clear_auth',
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

has debug => (is => 'rw', isa => 'Bool', default => 0);

sub _build_ua {
    my $self = shift;
    my $ua = LWP::UserAgent->new;

    $ua->default_header('Accept-Encoding' => scalar HTTP::Message::decodable());
    $ua->default_header('Accept' => 'application/*+xml;version=' . $self->api_version);

    if ($self->debug) {
        $ua->add_handler("request_send",  sub { shift->dump; return });
        $ua->add_handler("response_done", sub { shift->dump; return });
    }

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

sub BUILD {
    my ($self, $args) = @_;

    $self->login;
}

sub login {
    my ($self) = @_;

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

    my $session = $self->map_object_xml($res->decoded_content);
    $self->session($session);
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

sub _do_http {
    my ($self, $method, $url, $content_type, $data) = @_;

    my $retry = 0;
    my $res;

    while ($retry++ <= 1) {
        my $req = $self->request($method => $self->url($url));

        $req->content_type($content_type) if ($content_type);
        $req->content($data) if ($data);
        $res = $self->ua->request($req);

        if ($res->code == 401 || $res->code == 403) {
            $self->clear_auth;
            $self->login;
        }
        else {
            last;
        }
    }

    unless ($res->is_success) {
        die $res->decoded_content if $res->decoded_content;
        die $res->status_line;
    }

    return $res->decoded_content;
}

sub get_hash {
    my ($self, $href) = @_;

    my $xml = $self->_do_http(GET => $href);

    return XMLin($xml, NsExpand => 1, KeyAttr => [], KeepRoot => 1, ForceArray => 1);
}

sub get {
    my ($self, $href) = @_;

    my $xml = $self->_do_http(GET => $href);

    return $self->map_object_xml($xml) if ($xml);
}

sub logout {
    my ($self) = @_;

    my $req = $self->request(DELETE => $self->session->href);
    my $res = $self->ua->request($req);

    unless ($res->is_success) {
        die $res->status_line;
    }
}

sub get_entity {
    my $self = shift;

    return $self->get($self->get_entity_href(@_));
}

sub get_entity_href {
    my ($self, $urn, $type) = @_;
    my $rel = 'entityResolver';
    my $etype = 'application/vnd.vmware.vcloud.entity+xml';
    my $link = first { $_->rel eq $rel && $_->type eq $etype }
                    @{ $self->session->Link };

    my $entity = $self->get($link->href . $urn);
    foreach my $e ( @{ $entity->Link } ) {
        next unless ($e->type eq $type);
        return $e->href;
    }
}

sub query {
    my ($self, $q, $element, $class) = @_;

    my $rel = 'down';
    my $etype = 'application/vnd.vmware.vcloud.query.queryList+xml';
    my $link = first { $_->rel eq $rel && $_->type eq $etype }
                    @{ $self->session->Link };

    my $xml = $self->_do_http(GET => $link->href . "?$q");
    my $data = XMLin($xml, KeyAttr => [], ForceArray => 1);
    load_class($class);

    my @results;
    foreach my $h (@{ $data->{$element} }) {
        push @results, $class->new( %$h, xml_name => $element, vcd_rest => $self );
    }

    return \@results;
}

sub delete {
    my ($self, $href) = @_;

    my $xml = $self->_do_http(DELETE => $href);

    return $self->map_object_xml($xml) if ($xml);
}

sub post {
    my ($self, $href, $content_type, $data) = @_;

    my $xml = $self->_do_http(POST => $href, $content_type, $data);

    return $self->map_object_xml($xml) if ($xml);
}

sub put {
    my ($self, $href, $content_type, $data) = @_;

    my $xml = $self->_do_http(PUT => $href, $content_type, $data);

    return $self->map_object_xml($xml) if ($xml);
}

sub map_object {
    my ($self, $type, $name, $data) = @_;

    my $class = VCD::Schema::TypeMap::get_schema_type($self->api_version, $type);
    die "Unknown type $type" unless $class;
    load_class($class);

    return $class->new( %$data, xml_name => $name );
}

sub map_object_xml {
    my ($self, $xml) = @_;

    my $data = XMLin($xml, NsExpand => 1, KeyAttr => [], KeepRoot => 1, ForceArray => 1);
    my ($name) = keys %$data;
    my $xml_hash = $data->{$name}->[0];

    my $class = VCD::Schema::TypeMap::get_schema_type($self->api_version, $xml_hash->{'type'});
    die "Unknown type $$xml_hash{type}" unless $class;
    load_class($class);

    return $class->new( xml_name => $name, xml_hash => $xml_hash, vcd_rest => $self );
}

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

VCD::REST - Object Oriented access to the VMware vCloud REST API

=head1 EXAMPLE

    use VCD::REST;

    my $vcd = VCD::REST->new(host => $host, user_name => $username, password => $password);
    my $org = $vcd->session->org_list->[0]->get;
    print $org->FullName;

    my $org = $vcd->get($org_href);

    $org->Description($new_description);
    $org->put;

    my $cat = $org->post_link('add', 'application/vnd.vmware.admin.catalog+xml',
        AdminCatalog => {
            name => $catalog_name,
            Description => $catalog_description,
        }
    );

=cut
