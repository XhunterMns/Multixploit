#!/usr/bin/env ruby
  
  #first scripte i hope u like it copyrights:Xhunter Mns
  #please do not change any of scriptes name
system "reset"
puts""  
puts"[+] Welcome to Mutlixploit v 1.0 [+]"
puts""
puts"     ##coded by X-Hunter Mns## "
puts""

puts""
puts "1) install metasploit 32bit"
puts""
puts "2) install metasploit 64bit"
puts""
puts "3) wirless_attack tools"
puts""
puts "4) webapplication attack tools"
puts""
puts "5) scanning tools"
puts""
puts "6) zone-h mass poster"
puts ""
puts "7) payloads"
puts ""
puts "8) Exit"
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
 puts "3-0 aircrack"
 puts ""
 puts "3-1) wifite v 1.0"
 puts ""
 puts "3-2) fluxion"
 puts ""
 puts "3-3) ghost phisher"
 puts ""
 puts "3-4) pixiewps"
 puts""
 puts"3-5) back <<"
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
     puts "4-0)wordpress revslider mass shell upload (put your sites in rev.txt)"
     puts ""
     puts "4-1)joomla com_mezun sql injection"
     puts ""
     puts "4-2)opencart brute force (put your sites in opencart.txt)"
     puts ""
     puts "4-3)cms grabber from ip"
     puts ""
     puts "4-4)Gs bing dorker"
     puts ""
     puts "4-5)joomla foxcontact shell upload"
     puts ""
     puts "4-6)Drupal exploit add admin"
     puts ""
     puts "4-7)back <<"
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
                                         system "python3 fox.py --url #{target} --cid #{CID}" #this one require pip3 colorama


                                  elsif
                                    webapplication == "4-6"
                                     then system ""                 # don't forget this scripte
                                  elsif
                                    webapplication == "4-7"
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
                                    then system "git clone github.com/wpscanteam/wpscan"
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

      
    
