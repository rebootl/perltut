#!/usr/bin/perl -w
#
#


#print "hello world!\n";


#print 1 / 32, "\n";

#$string = "This is test.\n";

#$string2 = $string;

#$string = "FOO";

#print $string2;


{
  # Env. A
  my $var = 1;
  {
    # Env. B
    my $var = 2;
    print "Env. B ", $var, "\n";
  }
  print "Env. A ", $var, "\n";
}
