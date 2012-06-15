package VCD::Schema::Meta;

use Moose::Role;

has xml_attributes => (
    is => 'rw',
    isa => 'ArrayRef[Str]',
    traits  => ['Array'],
    default => sub { [] },
    handles => {
        add_xml_attribute => 'push',
        map_xml_attributes => 'map',
    },
);

1;
