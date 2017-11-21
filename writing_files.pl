use strict;
use warnings;

$| = 1;

#Sometimes we might want to open a log file
#and make it easier for us to read through
sub write_file {

    my $input  = 'linux_user_auth.log';
    my $output = 'files/output.txt';

    open( INPUT,  $input, )       or die("input file $input not found");
    open( OUTPUT, '>' . $output ) or die("can't create $output");

    while ( my $line = <INPUT> ) {
        $line =~ s/Dell-Computer-Name/Computer Name/ig;
        $line =~ s/Dallas : TTY=pts\/. ;//ig;
        if ( $line =~ /session opened for user root/ ) {
            print OUTPUT "ROOT SESSION OPENED\n";
        }
        if ( $line =~ /USER=root/ && $line =~ /(COMMAND=\D*)/ ) {
            print OUTPUT $1;
        }
        if ( $line =~ /session closed for user root/ ) {
            print OUTPUT "ROOT SESSION CLOSED\n";
        }
    }

    close(INPUT);
    close(OUTPUT);
}

write_file();
