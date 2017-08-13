#!/usr/bin/perl 
# Zone-tn Perl Mass Poster Coded by Fallag Gassrini | Tunisian Fallaga Team
# al Fallaga Team ©
# https://www.facebook.com/gassrini.gov.tn

use URI::URL;
use LWP::UserAgent;
use Term::ANSIColor;
use IO::Socket::INET;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);


print "[START] Give Me Sites List :";
my $list=<STDIN>;
chomp($list);
  open (THETARGET, "<$list") || die "[-] Can't open the Website list !";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
foreach $tofuck(@TARGETS){

chomp($tofuck);



$req = HTTP::Request->new(GET=>$tofuck);
$useragent = LWP::UserAgent->new();
$response = $useragent->request($req);
$ar = $response->content;
if ($ar =~ /Hacked|Fallag |Gassrini|HACKED|FALLAG/){
open (TEXT, '>>Defaced.txt');
print TEXT "\n$tofuck   =>  Posted !!\n\n";
close (TEXT);
print colored ("Wait I'wll Post it Now",'white on_magenta'),"\n";
                                $dmn= $tofuck;
                                $def="Fallaga Team";
                                $zn="http://zone-h.org/notify/single";
                                $lwp=LWP::UserAgent->new;
                                $res=$lwp  -> post($zn,[
				'defacer'     => $def,
				'domain1'   => $dmn,
				'hackmode' => '15',
				'reason'       => '1',
				'submit'       => 'Send',
                                ]);
				if ($res->content =~ /color="red">(.*)<\/font><\/li>/) {
				print "$dmn submit $1\n";
                                }
                                else
                                {
                                print colored ("[ERROR]CANT POST Gass",'white on_red'),"\n";
                                     }
}
}
