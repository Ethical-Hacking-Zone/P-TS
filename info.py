#!/usr/bin/python3

import hashlib
import json
import requests as req
from bs4 import BeautifulSoup as bsp

phe = input('\n Enter Your Phone Number (Without +) : ')

site = "https://numverify.com/"

r = req.get(site)

r2 = r.content.decode('utf-8')
r4u = (bsp(r2, 'html5lib'))
a = r4u.find_all('input', type="hidden")[1]
a2 = a['value']

ay = hashlib.md5((phe + a2).encode('utf-8')).hexdigest()

headers = {
        'Host': 'numverify.com',
        'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0',
        'Accept': 'application/json, text/javascript, */*; q=0.01',
        'Accept-Language': 'fr,fr-FR;q=0.8,en-US;q=0.5,en;q=0.3',
        'Accept-Encoding': 'gzip, deflate, br',
        'Referer': 'https://numverify.com/',
        'X-Requested-With': 'XMLHttpRequest',
        'DNT': '1',
        'Connection': 'keep-alive',
        'Pragma': 'no-cache',
        'Cache-Control': 'no-cache'
}

ulr = "https://numverify.com/php_helper_scripts/phone_api.php?secret_key={}&number={}".format(ay, phe)

try:
   rr = req.get(ulr, headers=headers)
   inf = rr.content.decode()
   ze2 = json.loads(inf)
   ad = (ze2['valid'])
   at = (ze2['local_format'])
   dn = (ze2['international_format'])
   df = (ze2['country_prefix'])
   dj = (ze2['country_code'])
   dk = (ze2['country_name'])
   dl = (ze2['location'])
   c2r = (ze2['carrier'])
   lne = (ze2['line_type'])
except KeyError:
   print ('\n Using Tor is mandatory !!! ')
   exit()

da = "\033[32m"
re = '\033[0m'

print (da +'\n Valid number : '+ re, ad)
print (da +' Local format : '+ re, at)
print (da +' International format : '+ re, dn)
print (da +' Country prefix : '+ re, df)
print (da +' Country code : '+ re, dj)
print (da +' Country name : '+ re, dk)
print (da +' Location : '+ re, dl)
print (da +' Carrier : '+ re, c2r)
print (da +' Type : '+ re, lne)
