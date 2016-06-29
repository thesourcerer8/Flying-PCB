#!/usr/bin/perl -w
use LWP::Simple;
use JSON;
use Data::Dumper;
use IO::Socket;

# This interface receives the data from an Spektrum DX6i connected with an Audio cable to an Arduino
# which is running the software from 
# http://forum.arduino.cc/index.php?topic=182681.msg1354354#msg1354354
# Change the #define NUM_OF_CHL 7


#Linux:
#use Device::SerialPort;
#my $port = Device::SerialPort->new("/dev/ttyUSB3");
#Windows:
use Win32::SerialPort;
my $port = Win32::SerialPort->new("COM14");

$port->baudrate(115200); # Configure this to match your device
$port->databits(8);
$port->parity("none");
$port->stopbits(1);
$port->read_interval(1);

$|++;

#my $response = IO::Socket::INET->new(Proto=>"udp",LocalPort=>20000)
#  or die "Can't make UDP server: $@";

my $message = IO::Socket::INET->new(Proto=>"udp",PeerPort=>20001,PeerAddr=>"localhost") 
  or die "Can't make UDP socket: $@";

#$message->send("sendpos Plane controllerstate ");

sub foto()
{
  $message->send("photo Plane shoot_photo");
}

sub mymap($)
{
  my $max=1932.0;
  my $min=1092.0;
  my $destmin=-1.0;
  my $destmax=+1.0;
  return(($_[0]-$min)/($max-$min)*($destmax-$destmin)+$destmin);
}

my $char = $port->read(100);
while(1)
{
  print " *** ".$char if(defined($char));
  if($char=~m/(\d+) \| (\d+) - (\d+) - (\d+) - (\d+) - (\d+) - (\d+) - (\d+) - (\d+) -/)
  {
    #print "Found!\n";
    $message->send("sendpos Plane controllerstate [".mymap($2).",".mymap($3).",".mymap($4).",".mymap($5)."]");
  }
  $char = $port->read(100);
}
