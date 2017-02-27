#!/usr/bin/perl
#
# fizzbuzz, print numbers from 1 to 100,
# if divideable by 5 print fizz, if divideable by 7 print buzz,
# for both print fizzbuzz
#
#

# using for

for ($i = 1; $i <= 100; $i++) {

  print $i, " ";

  if ($i % 5 == 0) {
    print "fizz";
  }

  if ($i % 7 == 0) {
    print "buzz";
  }

  print "\n";

}

# using foreach

foreach $i (1..100) {
    print "foreach   $i ";
    print "fizz" unless ($i%5);
    print "buzz" unless ($i%7);
    print "\n";
}

# oneliner

for (1..100) { print "oneliner   $_ " . ($_%5 ? '' : 'fizz') . ($_%7 ? '' : 'buzz') . "\n"; }

print map ("map-oneliner $_ " . ($_%5 ? '' : 'fizz') . ($_%7 ? '' : 'buzz') . "\n", (1..100));

print map { "map-oneliner2 $_ " . ($_%5 ? '' : 'fizz') . ($_%7 ? '' : 'buzz') . "\n" } (1..100);



