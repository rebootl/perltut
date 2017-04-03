#!/usr/bin/perl (merely for syntax highlighting)
#
#

package Helpers;

# helpers
sub new_unique ($@); # liest ein neues Element ein bis es eindeutig ist oder abgebrochen wird
sub new_present ($@); # liest ein neues Element ein bis es gefunden ist oder oder abgebrochen wird 
sub new ($); # liest ein neues Element ein
sub pos ($@); # sucht ein Element

sub new_unique ($@) {
    my( $request, $id ) = ( shift, '' );
    while( 1 ) {
        ( $id = new( $request )) || last;
        if( &pos( $id, @_ ) < @_ ) { print "$request bereits vorhanden\n"; }
        else { last; }
    }
    return $id;
}

sub new_present ($@) {
    my( $request, $id, $i ) = ( shift, '', 0 );
    while( 1 ) {
        ( $id = new( $request )) || last;
        unless( ($i = &pos( $id, @_ )) < @_ ) { print "$request nicht vorhanden\n"; }
        else { last; }
    }
    return( $id, $i );
}
sub new ($) {
    print shift, ' = ';
    my $input = <STDIN>;
    chop $input;
    return $input;
}

sub pos ($@) {
    my $id = shift;
    for( my $i=0; $i < @_; $i+=2 ) { ( $_[ $i ] eq $id ) && return $i; }
    return scalar @_;
}

1;
