#!/usr/bin/perl -w
#
#


# reference
$a_ref = \100;

print $a_ref . "\n";

# dereference
print $$a_ref . "\n";

#$$a_ref = 5000;
#print $$a . "\n";

$haschi_ref = {
    'klasse' => 'best',
    'art' => 'brauner afghane'
};

print "Klasse: " . $haschi_ref->{'klasse'} . "\n";

$haschi_ref->{'klasse'} = "neue klasse";

print "neue Klasse: " . $haschi_ref->{'klasse'} . "\n";

