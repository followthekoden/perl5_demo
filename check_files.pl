use strict;
use warnings;

$|=1;

sub check_files {
    my @fileLocations =
      ( 'downloads/google_home.html', 'downloads/google.png', 'downloads/test.txt' );

    foreach my $file (@fileLocations) {
        if ( -f $file ) {
            print "Yes: $file\n";
        }
        else {
            print "No: $file couldn't be found\n";
        }
    }
}

check_files()
