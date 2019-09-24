#!/usr/bin/perl 
  
# Using the Package 'Calculator' 
#set PERL5LIB=c:path\to\dir , this is for set your PM path to be used
use Calculator;
use Try::Tiny;

# Defining values to the variables
$a=30;
$b=0;

# Subroutine call 
try{
	Calculator::divide($a,$b);
	}
	catch{
	warn "\n -------------Error----";
    warn "\n received :$_ ";
	};
	
finally{
if(@_){
	print"\n Divide died with: @_\n";
	}
	else{
	print "\nDivide executed without error";
	}
	};