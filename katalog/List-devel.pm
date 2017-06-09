# List.pm
#
# list object
#
#

package List;


# structure of the list
#
# (
#   obj1,
#   obj2,
#   obj3,
#   obj4,
#   ..
# )


# (from tutorial 7.3)
# ("constructor")
#
# Create a new class instance (object)
# and return a reference of the object
sub new {
    my $arg0 = $_[0];
    my $cls = ref($arg0) || $arg0;
    my $this = {};
    bless $this, $cls;
    $this->clear(); # (--> needed ?)

    # --> load stored list here

    return $this;
}

# (from tutorial 7.3)
#sub clear {
#    my $this = $_[0];
#}

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

1;
