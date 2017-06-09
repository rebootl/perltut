#!/usr/bin/perl -w -I.
#
# tests article obj.

use strict;
use warnings;

use Article;

my $article_1 = Article->new(
    name => "maus USB",
    company => "Logitech",
    amount => 5,
    unit => "Stk"
);

print "article uid def.: ";
if (defined $article_1->{'uid'}) { print "PASS\n"; }
else { print "FAILED\n"; }

print "article uid corr.: ";
if ($article_1->{'uid'} eq "maus-USB_Logitech") { print "PASS\n"; }
else { print "FAILED\n"; }
