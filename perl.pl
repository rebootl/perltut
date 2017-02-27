#!/usr/bin/perl
#
# perl basics....
#




# hello world
print "Hello Perl!\n";
print "\n";

# variables

$num = 15;

print "Variable:\n";
print "  \$num = $num\n";

$str = "This is a string variable.";

print "  $str\n";

# substring

$subs = substr($str, 4, 8);
print "  substring: $subs\n";

# length

print "  \$str length is: ", length($str), "\n";

# list

@col_list = ("red", "blue", "green", "violet", "black");

