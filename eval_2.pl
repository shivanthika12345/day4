#https://caveofprogramming.com/perl-tutorial/perl-eval-using-eval-to-run-code-and-trap-errors-in-perl.html
use strict;
use warnings;


my $result = eval { 
    my $wrong = 5/0;
    
    print "Value: $wrong";
};

print "Script is still running!\n";

unless($result) {
    print $@;
}
