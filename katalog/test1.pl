#!/usr/bin/perl -w -I.
#
# test list obj.

use strict;
use warnings;

use Article;
use List;

my $list_obj_1 = List->new( storage_path => "foo.dat" );

my $list_obj_2 = List->new();

print "list entry corr.: ";
if ($list_obj_1->{'list'}->[0]->{'name'} eq "Keyboard ABC 5") {
    print "PASS\n";
}
else { print "FAILED\n"; }

# store list to file
$list_obj_1->store();
# check stored file (line 1)
print "stored line 1 corr.: ";
open(my $fh_0, "<" . $list_obj_1->{'storage_path'}) or die "cannot open file :(...";
my $line1 = readline($fh_0);
# debug
#print $line1;
if ($line1 eq "10\tMYCOMP.org\tKeyboard ABC 5\tKeyboard-ABC-5_MYCOMP-org\tStk\t\n") {
    print "PASS\n";
}
else { print "FAILED\n"; }

# load stored entries
$list_obj_1->load();
