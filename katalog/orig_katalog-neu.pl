#!/usr/bin/perl -w

# alt
%articles = (
    'Artikel1' => 5,
    'B5' => 3000
);




# mit ref.

@MASTER_LIST = ();



# beispielartikel
%art1 = (
    'name' => "Mein Art. 1",
    'amount' => 25000,
    'company' => "MYCOMP.org"
);

%art2 = (
    'name' => "BUBUArt",
    'amount' => "3 Stk.",
    'company' => "FOOCOMP & Co."
);



# in Master Liste pushen
push(@MASTER_LIST, \%art1);
push(@MASTER_LIST, \%art2);



# Zugriff
print "1er Art. Name: " . $MASTER_LIST[0]->{'name'} . "\n";


 


sub list() {
    print "\n";
    print "Bezeichnung\tMenge\n";
    print "-----------\t-----\n";
    foreach my $name (keys %articles) {
        print "$name \t";
        print "\t" if (length $name < 7);
        print "$articles{$name}\n";
    }
    print "\n";
}

sub add() {
    print "Bezeichnung: ";
    my $name = <STDIN>;
    chomp $name;
    if (exists $articles{$name}) {
        print "Artikel bereits vorhanden, kehre zurück.\n";
        return;
    }
    if ($name eq "") {
        print "Leere Eingabe, kehre zurück.\n";
        return;
    }
    print "Menge: ";
    my $amount = <STDIN>;
    chomp $amount;

    #my %article = (
    #    'Name' => $name,
    #    'Amount' => $amount
    #);

    #my @values = ( $name, $amount );
    #push @articles, @values;

    $articles{$name} = $amount;
    print "Artikel eingefügt: $name, $amount\n";
}

sub edit() {
    list();
    print "Bezeichner eingeben: ";
    my $name = <STDIN>;
    chomp $name;
    unless ( exists $articles{$name} ) {
        print "Artikel existiert nicht, kehre zurück.\n";
        return;
    }
    print "Neue Menge eingeben: ";
    my $amount = <STDIN>;
    chomp $amount;
    $articles{$name} = $amount;
}

sub del() {
    list();
    print "Bezeichner eingeben: ";
    my $name = <STDIN>;
    chomp $name;
    if ( exists $articles{$name} ) {
        delete $articles{$name};
        print "Gelöscht.\n";
    }
    else {
        print "Artikel nicht gefunden, kehre zurück.\n";
    }
}



sub main() {
    my $input = "\n";
    do {
        chop $input; # entfernt das Zeilenende am Ende der Eingabe
        if ( ! $input ) {}# do nothing              
        elsif ( $input eq 'q' ) { exit; } # verlässt das Programm
        elsif ( $input eq 'l' ) { list; } # soll die Artikel mit Bezeichnung und Menge auflisten => to do
        elsif ( $input eq 'a' ) { add; } # soll einen neuen Artikel hinzufügen => to do
        elsif ( $input eq 'e' ) { edit; } # soll einen bestehenden Artikel bearbeiten => to do
        elsif ( $input eq 'd' ) { del; } # soll eine bestehenden Artikel entfernen => to do
        else { print "Ungültige Eingabe.\n"; } # Fehlermeldung
        print "(a)Hinzufügen (l)Auflisten (e)Bearbeiten (d)Entfernen (q)Verlassen\n"; # Eingabeaufforderung
        print "> ";
    } while ( $input = <STDIN> ) # liest eine Eingabezeile in die Standardein
}
