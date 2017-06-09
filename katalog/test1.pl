#!/usr/bin/perl -w -I.
#
# test list obj.

use strict;
use warnings;

use Article;
use List;

my $list_obj_1 = new List( storage_path => "foo.dat" );

my $list_obj_2 = new List();

print "list entry corr.: ";
if ($list_obj_1->{'list'}->[0]->{'name'} eq "Keyboard ABC 5") {
    print "PASS\n";
}
else { print "FAILED\n"; }

# store list to file

$list_obj_1->store();

# --> check file line 1

$list_obj_1->load();
