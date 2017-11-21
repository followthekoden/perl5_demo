use strict;
use warnings;

$| = 1;

sub read_log {
    my $log = 'linux_user_auth.log';
    open( INPUT, $log, ) or die("input file $log not found");

    while ( my $line = <INPUT> ) {
        if ( $line =~ /session opened for user root/ ) {
            print $line;
        }
    }
    close(INPUT);
}

read_log();
