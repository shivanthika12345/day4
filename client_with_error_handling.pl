#!/usr/bin/perl -w
# Filename : client.pl

use strict;
use Socket;
use Try::Tiny;

# initialize host and port
my $host = shift || 'localhost';
my $port = shift || 7890;
my $server = "192.168.180.8";  # Host IP running the server
my $is_connect=0;
# create the socket, connect to the port
try{
socket(SOCKET,PF_INET,SOCK_STREAM,(getprotobyname('tcp'))[2])
   or die "Can't create a socket $!\n";
connect( SOCKET, pack_sockaddr_in($port, inet_aton($server)))
   or die "Can't connect to port $port! \n";
   $is_connect = 1;
}catch{
warn "exception '$_' received\n";
#warn "exception  received\n";
  $is_connect=0;
};

try{
	if($is_connect==1){
		my $line;
		while ($line = <SOCKET>) {
		print "$line\n";
		}
		close SOCKET or die "close: $!";
	}
	else
	{
	print "connection id not success, hence terminating\n";
	}

} catch{
warn "exception '$_' received\n";
 
};



