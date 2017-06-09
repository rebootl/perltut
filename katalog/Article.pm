# Article.pm
#
# article object
#
#

package Article;

use Helper qw(escape_str_uid);

# (constructor)
sub new {
    my $class = shift;

    my $this = {
        name => 'testartikel 123',
        company => 'example AG',
        amount => 1,
        unit => 'Stk',
        @_,
    };

    bless($this, $class);

    $this->make_uid();

    return $this;
}

sub make_uid() {
    #my $this = $_[0];
    my $this = shift;

    $this->{'uid'} = Helper::escape_str_uid($this->{'name'} . "_" . $this->{'company'});
}

1;
