#!/usr/bin/perl (merely for syntax highlighting)
#
#

package Helpers;

# helpers
sub _new_unique ($@); # liest ein neues Element ein bis es eindeutig ist oder abgebrochen wird
sub _new_present ($@); # liest ein neues Element ein bis es gefunden ist oder oder abgebrochen wird 
sub _new ($); # liest ein neues Element ein
sub _pos ($@); # sucht ein Element

sub _new_unique ($@) {
    my( $request, $id ) = ( shift, '' );
    while( 1 ) {
        ( $id = _new( $request )) || last;
        if( _pos( $id, @_ ) < @_ ) { print "$request bereits vorhanden\n"; }
        else { last; }
    }
    return $id;
}

sub _new_present ($@) {
    my( $request, $id, $i ) = ( shift, '', 0 );
    while( 1 ) {
        ( $id = _new( $request )) || last;
        unless( ($i = _pos( $id, @_ )) < @_ ) { print "$request nicht vorhanden\n"; }
        else { last; }
    }
    return( $id, $i );
}
sub _new ($) {
    print shift, ' = ';
    my $input = <STDIN>;
    chop $input;
    return $input;
}

sub _pos ($@) {
    my $id = shift;
    for( my $i=0; $i < @_; $i+=2 ) { ( $_[ $i ] eq $id ) && return $i; }
    return scalar @_;
}

1;
