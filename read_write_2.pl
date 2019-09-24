#Not completed
sub read_file {
  my $file = shift;
  print STDERR "READ $file ... ";
  my @file;
  open(FH, "< $file") or die("Can't read $file: $!\n");
  while (<FH>) {
    chomp;
    my @t = split /\t/;
    @t = map { s/^\s+//g; s/\s+$//g; $_ } @t;
    push @file, \@t;
  }
  close FH;
  print STDERR scalar(@file), " lines\n";
  return @file;
}

sub write_file {
  my ($file, @file) = @_;
  print STDERR "WRITE $file ... ";
  open(FH, "> $file") or die("Can't open $file for write: $!\n");
  print FH join("\n", map { join("\t", @$_) } @file), "\n";
  close FH;
  print STDERR scalar(@file), " lines\n";
}