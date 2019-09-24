
#https://www.cs.ait.ac.th/~on/O/oreilly/perl/advprog/ch10_02.htm
use Data::Dumper ; 

# Create a complex data structure: a hash of arrays
$c = { 'even' => [2, 4,],
       'odd'  => [1, 3,]};
# Create sample object
$obj = bless {'foo' => 'bar'}, 'Example';
$msg = Dumper($c, $obj);
print $msg;