#!/usr/bin/perl -w

use Time::HiRes qw(usleep);
use Win32::SerialPort;

my $BLUETOOTH_INPUT_BUFFER=32;
my $OUTPUT_BUFFER=10;
my $HARDWARE_BUFFER_SIZE=32;
my $PACKET_SIZE=19;
my $PACKET_HEADER=1;
my $PACKET_CHECKSUM=4;
my $DATA_SIZE=14;

my $RECEIVED_DATA_PACKET=1;
my $RECEIVED_DATA_PACKET_N_C=2;
my $RECEIVED_CONTROL_PACKET=0;
my $CHECKSUM_ERROR=-1;
my $UNDEFINED_ERROR=-2;

# This function converts a binary string to its hex representation for debugging
sub bin2hex($)
{
  my $orig=$_[0];
  my $value="";
  return "" if(!defined($orig) || $orig eq "");
  foreach(0 .. length($orig)-1)
  {
    $value.=sprintf("%02X",unpack("C",substr($orig,$_,1)));
  }
  return $value;
}

sub fixChecksum($)
{
  my $d=$_[0];
  my $l=length($_[0]);
  my $checksum=unpack("C",substr($d,0,1));
  #print "checksum1: $checksum\n";
  $checksum^=(unpack("C",substr($d,1,1))<<8)|(unpack("C",substr($d,2,1)));  
  #print "checksum2: $checksum\n";
  for(my $i=3; $i<($PACKET_SIZE-$PACKET_CHECKSUM)-1; $i+=4)
  {
    $checksum^=unpack("N",substr($d,$i,4));
    #print "checksum2: $checksum\n";
  }
  #print "checksum2: $checksum\n";
  substr($_[0],15,4)=pack("N",$checksum);
}

our $PortObj = new Win32::SerialPort ("COM28") || die "Can't open port\n";    

sub sendvalues($$$$)
{
  my $speed=$_[0];
  my $z_rotate=$_[1];
  my $x_pitch=$_[2];
  my $y_roll=$_[3];

  our $controlpackage="\x00".pack("n",$speed).pack("f>",$z_rotate).pack("f>",$x_pitch).pack("f>",$y_roll)."0000";
  #print "Orig: ".bin2hex($controlpackage)."\n";
  fixChecksum($controlpackage);
  #print "Fixd: ".bin2hex($controlpackage)."\n";

  my $packets_to_be_received=1;
  my $datapackage=pack("C",$packets_to_be_received);
  $PortObj->write($controlpackage);
}
  


# 100 loops  to set the motor thrust from 0% to 100% with a fixedd rotation, pitch and roll
foreach my $a (0 .. 100) # 100 loops
{
  foreach(0 .. 100) # % of motor thrust
  {
    print "$_\n";
	sendvalues($_,2.0,2.0,3.0);
    #sendvalues(speed,z_rotate,x_pitch,y_roll);
    #print OUT $controlpackage;
    usleep(100000);
  }
}
