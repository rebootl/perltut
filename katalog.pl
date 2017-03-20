#!/usr/bin/perl -w

%articles = (
    'Artikel1' => 5,
    'B5' => 3000
);


sub list() {
    print "Bezeichnung\t\tAnzahl\n";
    foreach my $name (keys %articles) {
        print "$name \t\t$articles{$name}\n";
    }
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

    print "Anzahl: ";
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
    unless (exists $articles{$name}) {
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
    delete $articles{$name};
}

my $input = "\n";
do {
        chop $input; # entfernt das Zeilenende am Ende der Eingabe
        if( ! $input ) {}# do nothing              
        elsif( $input eq 'q' ) { exit; } # verlässt das Programm
        elsif( $input eq 'l' ) { list; } # soll die Artikel mit Bezeichnung und Menge auflisten => to do
        elsif( $input eq 'a' ) { add; } # soll einen neuen Artikel hinzufügen => to do
        elsif( $input eq 'e' ) { edit; } # soll einen bestehenden Artikel bearbeiten => to do
        elsif( $input eq 'd' ) { del; } # soll eine bestehenden Artikel entfernen => to do
        else {print 'ungültige Eingabe';} # Fehlermeldung
        print "(a)Hinzufügen (l)Auflisten (e)Bearbeiten (d)Entfernen (q)Verlassen\n"; # Eingabeaufforderung
} while( $input = <STDIN> ) # liest eine Eingabezeile in die Standardein
