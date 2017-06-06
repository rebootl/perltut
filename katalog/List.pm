# List.pm
#
# list object
#
#

package List;

# (from tutorial 7.3)
# ("constructor")
#
# Create a new class instance (object)
# and return a reference of the object
#
# also see ref: - https://docstore.mik.ua/orelly/perl3/prog/ch12_04.htm
sub new {
    #my $arg0 = shift;
    #my $class = ref($arg0) || $arg0;
    # ==> simplified
    # --> why is this done ?
    my $class = shift;

    my $this = {
        storage_path => 'list.dat',  # (use a default attribute)
        @_,                         # Override previous attributes (see ref.)
    };

    bless($this, $class);

    # --> load stored list here
    $this->{'list'} = load_pseudo();

    return $this;
}

# (from tutorial 7.3)
#sub clear {
#    my $this = $_[0];
#}
sub clear {}

# evtl. getter for the list
#sub getList {
#}

# add an entry to the list
sub addEntry {}

# modify an existing entry
sub editEntry {}

# delete entry
sub deleteEntry {}

# store the list on filesystem
sub store {}

# load the list from filesystem
sub load {}

# get some pseudo list data cause too lazy
# to write fs function now
sub load_pseudo {
    my @list = ();

    # some pseudo data
    %art1 = (
        'name' => "Mein Art. 1",
        'amount' => 25000,
        'company' => "MYCOMP.org"
    );
    %art2 = (
        'name' => "BUBUArt",
        'amount' => "3 Stk.",
        'company' => "FOOCOMP & Co."
    );

    push(@list, \%art1);
    push(@list, \%art2);

    return \@list;
}

1;
