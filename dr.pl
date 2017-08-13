#!/usr/bin/perl 
#
#
#
#
#
#   GSDorker PRiv8 2016 Code : Fallag Gassrini  .. Don't share it and don't Change my Fucking Rights 
#    Tunisian Fallaga Team | Tunisian Cyber Resistance | Fuck Zionist Fuck usa Fuck iran Fuck isis and Fuck sisi 
#
#
#
#
#
#
#
#
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);
system('cls');


$logo="
                      ':llcodddddoodddddddddolll;.                              
                  'cldxdx0NMXd,.    .';cox0WWXOxddoll'                          
               'lodd0WMMNd;..,clc:::::;,,,;cddxOXMWOoood;                       
            'oddkNMMMKo' .:l:..                  'OMMMKdddo.                   .
          ;xdxXMMMMMl .:lc.                        cMMMMMKddd'             ....'
        ,OdxWMMMMMMx;oc.                           cMMMMMMMNodx.       ........'
      .xxdNMWK0KMMNd'            ';;;;,,'.  ...'',;dN0KXNNWWN0:k;...'''........,
     '0oKMMX;.;;dW,':       .:dkOxlcccclloddollc;,..;'...''''''lddxdc''........,
    ;0oNMMW;    lMXo    'cloc'.                  .;coc.......;kd0NXWW0,'.......,
   :0oWMMW;     ON0.. xWk,.              ..',:ccc;.  ,.......dlxWKcoNWo'''.....'
  'KoWMMMx     ,WXx:'O:...',clccloxkO0XNWx,..        :.......;kokXXXN0;''''''.'.
 .KoNMMMK.     kk. oo.       dk0WMMMMMM0c.           odc;'....'lddxxl,'''''..   
 okkWWWO.     oWk..k,       c:l: .OMMMMo' cOc.       ;MMMMWXKOkkxxxkcd:         
.XlNx.      .OWWWKdKo..   .xO0Oxo. KMMMWWMMMMM0;;::;:kMMMMMMMMMMMMMMXl0         
cKdMN,     .dxxKWWN:,clc''OMMMMMMNkWW0xooooxd;'...   kMMMMMMMMMMMMMMMcX.        
dkkK'    ..:.  xMWN.    ,0WMMMMNOo,.           .',dkoxMMMMMMMMMMMMMMMoK;        
xk,      ON; .lWWWX'.    .x0l,.                ;oc'  xckMMMMMMMMMMMMMo0:        
dk.    .OMMW0NMMXxl:;;;:ok.                  :o;   .k: :MMMMMMMMMMMMMoK;        
:K.  .oWMMMMMMWd''''''''',;;'            'cll.   .lo.  ;MMMMMMMMMMMMMcX.        
.X;cOWMMMMMMMX:''''''''''''',;::::clollc:'   .;lo:.    lMMN0WMMMMMMMXlO         
 dkOMMMMW00xd,''''',oocc'''''',l:;'......';;:;.        0Nc   :NMMMMMo0,         
 .KlNMMMXxKd';oxxdkN:   ;'''''''''',,,;cclc.          oc      OMMMMKlk          
  ,KoWMMMW0O0Ol,. ld   :X0;'''''''''''''''';'   ..;ld:       .kcdXXc0.          
   c0dWMMWO:     co  :XMMMWx'''''''''''''''':x::xWXl        cd.   .0.           
    :0d0l.      x:'dNMMMMMMMK:''''''''''''''',xKd'        .0:    .0'            
     ;0,.      kc0MMMMMMMMMMMMXxl;''''''''''''l.         .o.    ;k.             
      .kd.    .NWMMMMMMMMMMMMMMMMMNl.,'''''''':        .l:    .xl               
        ,k:.   kMMMMMMMMMMMMMMMMMN;  ''''''''':       ;d.    lk.                
          ;d:. .NMMMMMMMMMMMMMMWx.   ,'''''''':      o,   .lx,                  
            .oo,cKMMMMMMMMMMMMK'      ,.''''',;     c.  ,oo'                    
               :ooclkXMMMMMMWd       .,'''';,.      .,od;                       
                  ;lcc::cdOk,        ;'....     .,ccc,                          
                      .:cc::;'..        ..';cc::;.                              
                            'cx00kxO00KX0xc,.                        
";


print colored ("[ Code 4 Palestine |",'white on_black');
print colored (" Love 4 Palestine |",'white on_green');
print colored ("Life 4 Palestine ]",'white on_red'),"\n";
print colored("[ GS-Dorker|Coded:Fallag Gassrini|Tunisian Fallaga Team ]",'white on_blue'),"\n";
print color("white"), ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \n";
print color("white"), ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \n";
print color("green"), "[1] Bing Doker     |> Here You Chose Da Country Dat U Want \n";
print color("green"), "[2] Bing Dorker    |> Here I Will Grab Using Ur Dork World Wide Country Websites\n";
print color("green"), "[3] Mass Site Grab |> By Ip or Websites List\n";
print color("green"), "[4] Mass Site Grab |> Range Ip by Ip or Wbesite list\n";
print color("green"), "[5] About Me\n";
print color("white"), ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \n";
print color("white"), ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \n";
print "[+] Choose Number : ";
my $targett = <STDIN>;
chomp $targett;

if($targett eq '1')
{
print "[Here You Can Choose The Country Dork exp: inurl:.asp?id= site:co.il ]\n";
print "Give Me Dork:";
$dork=<STDIN>;
chomp($dork);
$dork=~s/ /+/g;
gassonee();
}

if($targett eq '2')
{
print "[Just Put Your Dork And I will Scan All World Sites Area ]\n";
print "Give Me Dork:";
$dor=<STDIN>;
chomp($dor);
$dor=~s/ /+/g;

@country= ("af","al","dz","as","ad","ao","ai","aq","ag","ar","am","aw","au","at","az","bs","bh","bd","bb","by","be","bz","bj","bm","bt","bo","ba","bw","bv","br","io","bn","bg","bf","bi","kh","cm","ca","cv","ky","cf","td","cl","cn","cx","cc","co","km","cg","cd","ck","cr","ci","hr","cy","cz","dk","dj","dm","do","tl","ec","eg","sv","gq","er","ee","et","fk","fo","fj","fi","fr","gf","pf","tf","ga","gm","ge","de","gh","gi","gr","gl","gd","gp","gu","gt","gn","gw","gy","ht","hm","hn","hk","hu","is","in","id","iq","ie","il","it","jm","jp","jo","kz","ke","ki","kw","kg","la","lv","lb","ls","lr","ly","li","lt","lu","mo","mk","mg","mw","my","mv","ml","mt","mh","mq","mr","mu","yt","mx","fm","md","mc","mn","ms","ma","mz","na","nr","np","nl","an","nc","nz","ni","ne","ng","nu","nf","mp","no","om","pk","pw","ps","pa","pg","py","pe","ph","pn","pl","pt","pr","qa","re","ro","ru","rw","kn","lc","vc","ws","sm","st","sa","sn","cs","sc","sl","sg","sk","si","sb","so","za","gs","kr","es","lk","sh","pm","sr","sj","sz","se","ch","tw","tj","tz","th","tg","tk","to","tt","tn","tr","tm","tc","tv","ug","ua","ae","gb","us","um","uy","uz","vu","va","ve","vn","vg","vi","wf","eh","ye","zm","zw");

OUTER: foreach $country(@country){
chomp $country;
$dork="$dor+site:$country";
print color("yellow"),"[Country : ";
print color('reset');
print color("white"),"$country]\n";
print color('reset');
gassone();
}
}


if($targett eq '3')
{
print "[Put A Ip List path or websites BUT websites should be www.site.com without http : ... ]\n";
print " Path to your websites list:";
my $list=<STDIN>;
chomp($list);
	open (THETARGET, "<$list") || die "[-] Can't open the file -_- are u drinking ?!";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;



OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
get();
}else{
get();
}

}


}
if($targett eq '4')
{
print "[Put A Ip List path or websites BUT websites should be www.site.com without http : ... ]\n";
print " Path to your websites list:";
my $list=<STDIN>;
chomp($list);
	open (THETARGET, "<$list") || die "[-] Can't open the file -_- are u drinking ?!";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;



OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
gett();
}else{
gett();
}

}
}

if($targett eq '5')
{
print "         [Tools Coded by Fallag Gassrini | Priv8 4 Tunisian Fallaga Team 2016-2017 ]\n       Use it and Fuck u If  You change rights coz changing my Fucking name by Yours\n                             Wont make you da Real Coder \n              Hackers make tools but tools Wont make you a fucking Hacker \n[ Fuck Zionist , Fuck usa , Fuck ISIS , Free Palestine Love for Palestine Life For Palestine <3 ]\n";
}
else{
print color("red"), "OPEN UR FUCKING EYES -_-\n";
print color('reset');
}
##############################
sub gett(){
$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
for ($i = 1; $i <= 255; $i+=1){
$ips ="$a.$b.$c.$i";
OUTER: foreach $ip($ips){
print color("red"), " [IP] > [$ips]\n";
print color ('reset');
        open (TEXT, '>>ips.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
gassone();
}
}
}
#############################
sub get(){

$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
$ips="$a.$b.$c.$d";
print " [IP] > [$ips]\n";
        open (TEXT, '>>ips.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
gassone();
}
####################################"
sub gassone(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>sites-1.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);
					}
} 
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
next OUTER;
}
}
}
###########
sub gassonee(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>sites-1.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);
					}
} 
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
exit;
}
}
}
