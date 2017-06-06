# helper.pm
#
# helper functions
#
#

package Helper;

# escape string for uid
# replaces everything exept alphanumerics, underscore, dash
sub escape_str_uid {
    my $str = $_[0];

    $str =~ s/[^[:alnum:]_-]/-/g;

    # (debug)
    #print $str;

    return $str;
}

# (test)
#escape_str_uid("dubbel & Co.");

1;
