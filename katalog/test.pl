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

$article_1->{'test'} = "TESTETETEET";
print $article_1->{'test'} . "\n";

print $article_1->{'name'} . "\n";
print $article_1->{'uid'} . "\n";

print "----------\n";

# using the list object

use List;

my $list_obj_1 = new List( storage_path=>"foo.dat" );

my $list_obj_2 = new List();

$list_obj_1->{'a'} = "test";

print $list_obj_1->{'list'}->[0]->{'name'} . "\n";

print $list_obj_1->{'a'} . "\n";
