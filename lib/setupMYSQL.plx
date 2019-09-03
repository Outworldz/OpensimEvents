#!perl
#

use MYSQL;

sub GetDB()
{

##########################################
# Windows Database
##########################################
# the ODBC name of the database and the userID and password

  
  my $Handle;

  if ( open(FILE,"/Inetpub/MySQL.txt"))
  {
    while (<FILE> )
    {
        $sms = $_;
        if ($sms =~ /^DSN/)
        {
          $Handle =new MYSQL($sms);
          
          if ($Handle) # Get all setup vars from the above database - Setup Table in the database
          {
            last;
          }
        }
    }
    close FILE;
    
   }
  else
  {
    print "NO SQL connection!";
    exit;
  }
  return $Handle;

}


1;  # required  return true command for include files
