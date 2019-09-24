#https://caveofprogramming.com/perl-tutorial/perl-eval-using-eval-to-run-code-and-trap-errors-in-perl.html
use strict;
use warnings;

# Create a string containing Perl code.
my $code = q|
    my $text = "Hello";
    
    print "$text\n";
    
    # Deliberately introduce an error.
    jljlk
|;

my $result = eval($code);

# If there's a problem eval'ing the
# code, eval() returns undef and
# the error is found in $@.
unless($result) {
    print $@;
}
