use strict;
use warnings;

$| = 1;

#Cyber Analyst can use this look through secuirty logs of systems.
#this is a template meant to be built upon.
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
