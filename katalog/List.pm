# List.pm
#
# list object
#
#

use strict;
use warnings;

package List;

# (==> incl. external)
#use Article;

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
        storage_path => "list.dat", # (use a default attribute)
        entry_type => "Article",
        @_,                         # Override previous attributes (see ref.)
    };

    bless($this, $class);

    $this->{'entry_type'}->can('new') or die "Noooo... :(\n";

    $this->{'list'} = [];
    $this->load_pseudo();

    return $this;
}

# (from tutorial 7.3)
#sub clear {
#    my $this = $_[0];
#}
#sub clear {}

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
sub store {
    my $this = shift;

    my $str_list = "";
    foreach my $entry (@{$this->{'list'}}) {

        my $line = "";
        foreach my $key (sort keys %{$entry}) {
            $line .= %{$entry}{$key} . "\t";
        }
        $str_list .= $line . "\n";
    }

    my $filehandle_F;
    open($filehandle_F, ">" . $this->{'storage_path'}) or die;
    print $filehandle_F $str_list;
}

# load the list from filesystem
sub load() {
    my $this = shift;



}

# get some pseudo list data cause too lazy
# to write fs function now
sub load_pseudo {
    my $this = $_[0];

    # some pseudo data
    my $art_1 = Article->new(
        'name' => "Keyboard ABC 5",
        'amount' => 10,
        'company' => "MYCOMP.org",
        'unit' => "Stk"
    );
    my $art_2 = Article->new(
        'name' => "BUBUArt",
        'amount' => 5,
        'company' => "FOOCOMP & Co.",
        'unit' => "M"
    );

    push(@{$this->{'list'}}, $art_1);
    push(@{$this->{'list'}}, $art_2);
}

1;
