#!/usr/bin/perl
#
#

%haschi = ( "one" => "eins",
            "two" => "zwei",
            "three" => "drei" );

foreach $key, $value (each %haschi) {
    print $key, " ", $value, "\n";
}

#foreach
