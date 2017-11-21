use strict;
use warnings;
use LWP::Simple;

sub downloader {
    my $homepage = getstore("http://www.google.com", "downloads/google_home.html");
    my $logo = getstore("https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
    "downloads/google.png");

    if($homepage == 200 && $logo == 200){
        print "success\n";
    }
    else {
        print "failed\n";
    }
}

downloader();
