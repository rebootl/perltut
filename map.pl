#!/usr/bin/perl -w
#
#


#print "hello world!\n";


#print 1 / 32, "\n";

#$string = "This is test.\n";

#$string2 = $string;

#$string = "FOO";

#print $string2;


@names = ('ALICE', 'tOm', 'JaSON', 'peter');
print join(', ', map (ucfirst(lc($_)), @names)), "\n";
