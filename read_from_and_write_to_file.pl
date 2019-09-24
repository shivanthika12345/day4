#!/usr/bin/perl 
#not working

#my $file = shift or die "Usage: $0 inputfile\n";
# subroutine that parses the file
sub read_file {
#my ($file)= @_;
my $file='input.txt';
open(F,$file) || die {"Could not open $file!"};

# read each line of the file

#read_file();
while($file){
open(my $fh, '>>',$file) or die "Could not open '$file'$!";

print "a\n";
}

}
read_file();