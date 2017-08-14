#!/usr/bin/perl
# This script helps you to get Wordpress & Joomla & Drupal Sites from a server

use LWP::UserAgent;

use HTTP::Request::Common qw(GET);

use WWW::Mechanize;  

use Socket;

$mech = WWW::Mechanize->new(autocheck => 0);
$ag = LWP::UserAgent->new();

$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");

$ag->timeout(10);

sub getSites {
	for($count=10;$count<=1000;$count+=10)
	{
		$k++;
#		$url = "http://www.hotbot.com/search/web?pn=$k&q=ip%3A$ip&keyvol=01f9093871a6d24c0d94";
		$url = "https://www.bing.com/search?q=ip%3a$ip&go=Submit+Query&qs=ds&first=$count&FORM=PERE$k";
#		$url = "https://www.bing.com/search?q=ip%3A$ip+&count=50&first=$count";
		$resp = $ag->request(HTTP::Request->new(GET => $url));

		$rrs = $resp->content;



		while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g)
		{
	
			$link = $1;
		
			if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
			{
				if ($link !~ /^http:/)
				{
					$link = 'http://' . "$link" . '/';
				}
	
				if($link !~ /\"|\?|\=|index\.php/)
				{
					if  (!  grep (/$link/,@result))
					{
						push(@result,$link);
					}
				}
			} 
		}
	}
	$found = $#result + 1;
	print "found $found sites\n";
	
}
sub WPS {
	foreach $site (@result)
	{
		$url = $mech->get("$site");
		$Scont = $mech->content;
		if ($Scont =~ m/wp-content/g)
		{
			$license = $site."license.txt";
			$horse = $mech->get("$license");
			if ($horse->is_success)
			{
				$Scont = $mech->content;
				$login = $site."wp-login.php";
				$logUrl = $mech->get("$login");
	 	                if ($Scont =~ m/WordPress/)     
				{
					push @WPS,$site;
					print "$site\n";
				}
				elsif($logUrl->is_success) 
				{
					push @WPS,$site; 
					print "$site\n";
				}

			}

		}


	}

}
sub Drupal {
	foreach $site (@result)
	{
		if  (!  grep (/$site/,@WPS) and ! grep(/$site/,@JM))
		{
			$mech->get("$site");
			$Scont = $mech->content;
			if ($Scont =~ m/<meta name="Generator" content="Drupal/ig)
			{
				push @DS,$site;
				print "$site\n";
			}
		}
	}
}

sub DRV {
        foreach $site (@result)
        {
                $mech->get("$site");
                $Scont = $mech->content;
                if ($Scont =~ m/<meta name="Generator" content="Drupal $ver/ig)
                {
                        push @DS,$site;
                        print "$site\n";
                }
        }
	
}

sub Joomla {
	foreach $site (@result)
	{
		if  (!  grep (/$site/,@WPS))
		{
			$url = $mech->get("$site");
			$Scont = $mech->content;
			if ($Scont =~ m/<meta name="generator" content="Joomla!/ig)
			{
				push @JM,$site;
				print "$site\n";
			}
			else 
			{
				$admin = "$site/administrator/";
				$mech->get("$site");
				$AdminCont = $mech->content;
				if ($AdminCont =~ m/<meta name="generator" content="Joomla!/ig)
				{
					push @JM,$site;
					print "$site\n";
				}
			}
		}
	}
}
sub Joomla15 {
        foreach $site (@result)
        {
                $mech->get("$site");
                $Scont = $mech->content;
                if ($Scont =~ m/<meta name="generator" content="Joomla! 1.5 - Open Source Content Management" \/>/ig)
                {
                        push @JM,$site;
                        print "$site\n";
                }
                else 
                {
                        $admin = "$site/administrator/";
                        $mech->get("$site");
                        $AdminCont = $mech->content;
                        if ($AdminCont =~ m/<meta name="generator" content="Joomla! 1.5 - Open Source Content Management" \/>/ig)
                        {
                                push @JM,$site;
                                print "$site\n";
                        }
                }
        }
}


sub IP_id {
	print "Enter the IP of the server or a site hosted on the same server\n";
	print ">> ";
	$input =<stdin>;
	chomp($input);
	if ($input =~ m/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
	{
		$ip = $input;
		print "Collecting the sites...\n";
		getSites();
	}
	elsif ($input =~ m/\D/g)
	{
		if ($input =~ m/https:\/\//)
		{
			$source = substr($input,8,length($input));
			print "Site : $source\n";
			print "Getting IP Adress...\n";
                        $ip = inet_ntoa(inet_aton($source));
                        print "IP: $ip\n";
			print "Collecting the sites...\n";
			getSites();
		}
                elsif ($input =~ m/http:\/\//)
                {
                        $source = substr($input,7,length($input));
                        print "Site : $source\n";
			print "Getting IP Adress...\n";
                        $ip = inet_ntoa(inet_aton($source));
                        print "IP: $ip\n";
			print "Collecting the sites...\n";
			getSites();

                }
		else 
		{
			print "Site : $input\n";
			print "Getting IP Adress...\n";
			$ip = inet_ntoa(inet_aton($input));
			print "IP : $ip\n";
			print "Collecting the sites...\n";
			getSites();
		}
	}	
}

sub Into {
	print qq(
         .-.
   %%%%,/   :-.               << GrabTheCMS >>       -> {fallag Ghazzaw!}
   % `%%%, /   `\\   _,        <TM> Fallaga  </TM>
   |' \)`%%|     '-' /            
   \\_/\  %%%/`-.___.'        <W>   Extract Wordpress Sites               </w>
    __/  %%%"--"""-.%,      <J>   Extract Joomla Sites                  </j>
  /`__|  %%         \\%%     <D>   Extract Drupal Sites                  </d>  
  \\\\  \\   /   |     /'%,    <ALL> Extract all Sites                     </all>
   \\]  | /----'.   < `%,    <WJD> Extract Wordpress + Joomla + Drupal   </wjd>
       ||       `>> >
       ||       ///`
       /\(      //\(
);


	print "\t\t\t    #(w/j/d/all/WJD) : ";
	$choice1 = <stdin>;
	chomp ($choice1);
	if ($choice1 eq "w" or $choice1 eq "W" or $choice1 eq "1")
	{
		print "\nExtract Wordpress sites...\n";
		print "==============================\n";
		IP_id();
		print "Searching for Wordpress sites\n";
		WPS();
		$n_found = $#WPS+1;
		print "\t>> Found $n_found Wordpress sites\n\n";
		print "Do you want to save the result (Y\\n): ";
		$save = <stdin>;
		chomp($save);
		if ($save eq "Y" or $save eq "" or $save eq "y")
		{
			open(wp, ">WPSites.txt");
			map {$_ = "$_\n"} (@WPS);
			print wp @WPS;
		print "\t>> Saved at WPSites.txt\n";
		}
	}
	elsif ($choice1 eq "j" or $choice1 eq "J" or $choice1 eq "2") 
	{
		print "\nExtract Joomla sites...\n";
		print "==============================\n";
		print "Do you want to extract all Joomla Sites or V1.5 only ?\n";
		print "(ALL\\1.5): ";
		$choice2 = <stdin>;
		chomp($choice2);
		if ($choice2 eq "all" or $choice2 eq "ALL" or $choice2 eq "")
		{
			IP_id();
			print "Searching for Joomla sites\n";
			Joomla();
			$n_found = $#JM+1;
			print "\t>> Found $n_found Joomla sites\n\n";
			print "Do you want to save the result (Y\\n): ";
			$save = <stdin>;
			chomp($save);
			if ($save eq "Y" or $save eq "" or $save eq "y")
			{
				open(joomsite, ">JoomlaSites.txt");
				map {$_ = "$_\n"} (@JM);
				print joomsite @JM;
				print "\t>> Saved at JoomlaSites.txt\n";
			}
		}
		elsif ($choice2 eq "1.5")
		{
			IP_id();
			print "Searching for Joomla 1.5 sites\n";
			Joomla15();
			$n_found = $#JM+1;
			print "\t>> Found $n_found Joomla 1.5 sites\n\n";
			print "Do you want to save the result (Y\\n): ";
			$save = <stdin>;
			chomp($save);
			if ($save eq "Y" or $save eq "" or $save eq "y")
			{
				open(joomsite, ">JoomlaSites.txt");
				map {$_ = "$_\n"} (@JM);
				print joomsite @JM;
				print "\t>> Saved at JoomlaSites.txt\n";
			}
		}
		else
		{
			print "Unknown Choice !!\nExiting...\n";
			exit;
		}
			
	}
	elsif ($choice1 eq "d" or $choice1 eq "D" or $choice1 eq "3")
	{
		print "\nExtract Drupal sites...\n";
		print "==============================\n";
		print "Do you want to extract all Drupal version or sites with specific version\n";
		print "(all? Y\\n): ";
		$choice3 = <stdin>;
		chomp ($choice3);
		if ($choice3 eq "n" or $choice3 eq "N")
		{
			print "(version?):" ;
			$ver = <stdin>;
			chomp ($ver);
			IP_id();
			print "Searching for Drupal $ver sites\n";
			DRV();
                        $n_found = $#DS+1;
                        print "\t>> Found $n_found Drupal sites\n\n";
                        print "Do you want to save the result (Y\\n): ";
                        $save = <stdin>;
                        chomp($save);
                        if ($save eq "Y" or $save eq "" or $save eq "y")
                        {
                                open(drupsite,">DrupalSites$ver.txt");
                                map {$_ = "$_\n"} (@DS);
                                print drupsite @DS;
                                print "\t>> Saved at DrupalSites$ver.txt\n";
                        }
		}
		elsif ($choice3 eq "Y" or $choice3 eq "y" or $choice3 eq "")
		{
			IP_id();
			print "Searching for Drupal sites\n";
			Drupal();
			$n_found = $#DS+1;
			print "\t>> Found $n_found Drupal sites\n\n";
			print "Do you want to save the result (Y\\n): ";
			$save = <stdin>;
			chomp($save);
			if ($save eq "Y" or $save eq "" or $save eq "y")
			{
				open(drupsite,">DrupalSites.txt");
				map {$_ = "$_\n"} (@DS);
				print drupsite @DS;
				print "\t>> Saved at DrupalSites.txt\n";
			}
			
		}
	}

	elsif ($choice1 eq "WJD" or $choice1 eq "wjd" or $choice1 eq "" or $choice1 eq "5")
	{
		print "\nExtract Wordpress & Joomla & Drupal sites...\n";
		print "====================================================\n";
		IP_id();
		print "\nSearching for Wordpress sites\n";
		print "---------------------------------\n";
		WPS();
		$n_found = $#WPS+1;
		print "\t>> Found $n_found Wordpress sites\n";
		open(wordpress, ">Wordpress.txt");
		map {$_ = "$_\n"} (@WPS);
		print wordpress @WPS;
		print "\t>> Saved at Wordpress.txt\n\n";

		print "\nSearching for Joomla sites\n";
		print "------------------------------\n";
		Joomla();
		$n_found = $#JM+1;
		print "\t>> Found $n_found Joomla sites\n";
		open(joomla, ">Joomla.txt");
		map {$_ = "$_\n"} (@JM);
		print joomla @JM;
		print "\t>> Saved at Joomla.txt\n\n";

		print "\nSearching for Drupal sites\n";
		print "-----------------------------\n";
		Drupal();
		$n_found = $#DS+1;
		print "\t>> Found $n_found Drupal sites\n";
		open(drupal,">Drupal.txt");
		map {$_ = "$_\n"} (@DS);
		print drupal @DS;
		print "\t>> Saved at Drupal.txt\n";
	}
	elsif ($choice1 eq "all" or $choice1 eq "ALL" or $choice1 eq "4")
	{
		print "\nExtract Server sites\n";
		print "========================\n";
		IP_id();
		map {$_ = "$_\n"} (@result);
		print @result;
		print "Do you want to save the result (Y\\n): ";
		$save = <stdin>;
		chomp($save);
		if ($save eq "Y" or $save eq "" or $save eq "y")
		{
			open(sites, ">Sites.txt");
			print sites @result;
			print "\t>> Saved at Sites.txt\n";
		}

	}
}
Into();
