#!/usr/bin/perl -w
#

@MASTER_LIST = ();

# Datenstruktur für Artikel
# u/ Beispielartikel
%artikel1 = (
    'Bezeichnung' => "Mein erster Art",
    'Hersteller' => "Cem Inc.",
    'Menge' => "3 stk."
);
%artikel2 = (
    'Bezeichnung' => "Bspartikel 2",
    'Hersteller' => "MYBOOB Inc.",
    'Menge' => "5 stk."
);
#print $artikel1{'Bezeichnung'} . "\n";

# refs in master liste pushen Bsp.
push(@MASTER_LIST, \%artikel1);
push(@MASTER_LIST, \%artikel2);

# Ausgabe Bsp. (dereferenziert)
print $MASTER_LIST[0]->{'Bezeichnung'} . "\n";


sub list() {
    print "\n";
    print "Bezeichnung\t\tHersteller\tMenge\n";
    print "-----------\t\t----------\t-----\n";
#    foreach my $name (keys %articles) {
    foreach my $entry (@MASTER_LIST) {
        print $entry->{'Bezeichnung'} . "\t\t";
        #print "\t" if (length $entry->{'Bezeichnung'} < 7);
        print "$entry->{'Hersteller'}\t";
        print "$entry->{'Menge'}\n";
    }
    print "\n";
}

#list();

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
    print "Hersteller: ";
    my $company = <STDIN>;
    chomp $company;
    print "Menge: ";
    my $amount = <STDIN>;
    chomp $amount;

    # --> insert checks here

    my %article = (
        'Bezeichnung' => $name,
        'Hersteller' => $company,
        'Menge' => $amount
    );

    push(@MASTER_LIST, \%article);
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
