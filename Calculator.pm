#https://www.geeksforgeeks.org/packages-in-perl/
#https://www.geeksforgeeks.org/packages-in-perl/

package Calculator; 

# Defining sub-routine for Addition 
sub addition 
{ 
	# Initializing Variables a & b 
	$a = $_[0]; 
	$b = $_[1]; 
	
	# Performing the operation 
	$a = $a + $b; 
	
	# Function to print the Sum 
	print "\n***Addition is $a"; 
} 

# Defining sub-routine for Subtraction 
sub subtraction 
{ 
	# Initializing Variables a & b 
	$a = $_[0]; 
	$b = $_[1]; 
	
	# Performing the operation 
	$a = $a - $b; 
	
	# Function to print the difference 
	print "\n***Subtraction is $a"; 
} 


# Defining sub-routine for Divide
sub divide 
{ 
	# Initializing Variables a & b 
	$a = $_[0]; 
	$b = $_[1]; 
	
	# Performing the operation 
	$a = $a / $b; 
	
	# Function to print the difference 
	print "\n***Divide is $a"; 
} 
1; 
