#!/usr/bin/perl -w
#
# tests for katalog app
#
#
#

# using the article object

use Article;

my $article_1 = Article->new(
    name => "maus USB",
    company => "Logitech",
    amount => 5,
    unit => "Stk"
);

#$article_1->{'test'} = "TESTETETEET";
#print $article_1->{'test'} . "\n";
#print $article_1->{'name'} . "\n";
#print $article_1->{'uid'} . "\n";

print "Test No. 1: ";
if (defined $article_1->{'uid'}) { print "PASS\n"; }
else { print "FAILED\n"; }

print "Test No. 2: ";
if ($article_1->{'uid'} eq "maus-USB_Logitech") { print "PASS\n"; }
else { print "FAILED\n"; }

print "----------\n";

# using the list object

use List;

my $list_obj_1 = new List( storage_path => "foo.dat" );

my $list_obj_2 = new List();

print "Test No. 3: ";
if ($list_obj_1->{'list'}->[0]->{'name'} eq "Keyboard ABC 5") {
    print "PASS\n";
}
else { print "FAILED\n"; }

#print $list_obj_1->{'list'}->[0]->{'name'} . "\n";

print "----------\n";

# store obj

$list_obj_1->store();



### debug

#my %h1 = (
#    'a' => "test1",
#    'b' => "test XYZ",
#);
#
#print %h1{'a'} . "\n";
