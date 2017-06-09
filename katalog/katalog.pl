#!/usr/bin/perl -w -I.
#
# a simple product catalog application for terminal
#
#
#
#
#
#

# using the list object

use List;

my $list_obj_1 = new List( storage_path=>"foo.dat" );

my $list_obj_2 = new List();

$list_obj_1->{'a'} = "test";

print $list_obj_1->{'list'}->[0]->{'name'} . "\n";

print $list_obj_1->{'a'} . "\n";
