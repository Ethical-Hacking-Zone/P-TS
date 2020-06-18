#!/usr/bin/python3
import hashlib
import json
import os
import requests as req
from bs4 import BeautifulSoup as bsp


phone = str(input('\n Enter Your Phone Number (Without +) : '))

site = "https://numverify.com/"
r = req.get(site)

with open('site.txt', 'wb') as sh:
	sh.write(r.content)

with open('site.txt') as cp:
	soup = bsp(cp, 'lxml')
#print (soup.prettify)

a = soup.find('input', type="hidden").next.next
b = a['value']
print (b)

ay = hashlib.md5((phone + b).encode('utf-8')).hexdigest()

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

ulr = "https://numverify.com/php_helper_scripts/phone_api.php?secret_key={}&number={}".format(ay, phone)

rr = req.get(ulr, headers=headers)
inf = rr.text
xcd = inf.encode('utf-8')

with open('inf.txt', 'wb') as x:
	x.write(xcd)

with open('inf.txt') as js:
	dat = json.load(js)

ad = (dat['valid'])
at = (dat['local_format'])
dn = (dat['international_format'])
df = (dat['country_prefix'])
dj = (dat['country_code'])
dk = (dat['country_name'])
dl = (dat['location'])
carrier = (dat['carrier'])
line = (dat['line_type'])

data = "\033[32m"
req = '\033[0m'
       
print (data +'\n Valid number : '+ req, ad)
print (data +' Local format : '+ req, at)
print (data +' International format : '+ req, dn)
print (data +' Country prefix : '+ req, df)
print (data +' Country code : '+ req, dj)
print (data +' Country name : '+ req, dk)
print (data +' Location : '+ req, dl)
print (data +' Carrier : '+ req, carrier)
print (data +' Type : '+ req, line)
		        

dir = "$HOME/*.txt"
os.system('rm -rf %s' % dir)

