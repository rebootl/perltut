#!/usr/bin/perl -w


@articles = ();

sub list() {

    foreach $name (@articles) {

        print $name;

    }

}

sub add() {

    print "Bezeichnung: ";
    my $name = <STDIN>;

    print "Anzahl: ";
    my $amount = <STDIN>;

    #my %article = (
    #    'Name' => $name,
    #    'Amount' => $amount
    #);

    my @values = ( $name, $amount );

    push @articles, @values;

    print "Inserted: $name, $amount\n";

}



my $input = "\n";
do {
        chop $input; # entfernt das Zeilenende am Ende der Eingabe
        if( ! $input ) {}# do nothing              
        elsif( $input eq 'q' ) { exit; } # verlässt das Programm
        elsif( $input eq 'l' ) { list; } # soll die Artikel mit Bezeichnung und Menge auflisten => to do
        elsif( $input eq 'a' ) { add; } # soll einen neuen Artikel hinzufügen => to do
        elsif( $input eq 'e' ) {} # soll einen bestehenden Artikel bearbeiten => to do
        elsif( $input eq 'd' ) {} # soll eine bestehenden Artikel entfernen => to do
        else {print 'ungültige Eingabe';} # Fehlermeldung
        print "(a)Hinzufügen (l)Auflisten (e)Bearbeiten (d)Entfernen (q)Verlassen\n"; # Eingabeaufforderung
} while( $input = <STDIN> ) # liest eine Eingabezeile in die Standardein
