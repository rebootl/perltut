#!/usr/bin/perl
#
# perl basics....
#




# hello world
print "Hello Perl!\n";
print "\n";

### variables

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

### lists 

print "List:\n";
@col_list = ("red", "blue", "green", "violet", "black");
# prints the number of items
print "  num. items: " . @col_list . "\n";
#print $#col_ist . "\n";

# list item assignment
@col_list[3] = "darkblue";

# range
@ten = (1..10);

# reverse
@net = reverse @ten;

# arrays can be combined, but are not nested
@combo = (@col_list, @ten);

# new elements can be added similarly
@addel = (@col_list, "grey");

# push
$num_el = push(@col_list, ("yello"));
print "  last item: ".@col_list[$num_el-1]."\n";

# unshift inserts at beginning

# number of elements
$num_el = @col_list;
$num_el2 = $#col_list +1;
print "  num. el.: ".$num_el2."\n";

# slices
@alpha = ('a'..'z');
@slice = @alpha[4, 10..15];
print "  slice: ".@slice."\n";

# modify multiple
@alpha[1,26] = ("alpha", "omega");

# pop
$value = pop @col_list;
print "  numpop: ".@col_list."\n";

# shift removes first

# splice ARRAY, OFFSET, LENGTH, LIST
splice @alpha, 4, 5, map(uc, @alpha[4 .. 8]);

# join joins list

# map
#map BLOCK LIST
#map EXPR, LIST

# sort sorting

### hash

%Age = ("Tom", 26, "Peter", 51, "Jones", 23);

# better
%Age = (
    Tom => 26,
    Peter => 51,
    Jones => 23,
);

print $Age{Tom}."\n";

delete $Age{Tom};
%Age = ();

%foop = (
    3 => "apple",
    11 => "orange",
    5 => "banana",
);
@key = sort { $a <=> $b } keys %foop;
@value = sort { $a cmp $b } values %foop;

print exists($foop{2})."\n";

# scalar
print scalar(@alpha)."\n";
# list assignment
($a, $b) = (11, 22);

### operators
#...


