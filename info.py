#!/usr/bin/python3
import hashlib
import json
import requests
from bs4 import BeautifulSoup
### NOTE TO DUMP NERD!!!
#improve = @°
class trex:
    def __init__(self, phone, domain, req):
        self.phone = phone
        self.domain = domain
        self.req = req
    def info(self):
        r = requests.get(self.domain)
        r1 = BeautifulSoup(r.content, 'html5lib')
        s = r1.find_all('input', type="hidden")[1]['value']
        d3 = hashlib.md5((self.phone + s).encode('utf-8')).hexdigest()
        try:
            r2 = requests.get(self.req.format(d3, self.phone))
            fx = json.loads(r2.content.decode())
            xz = fx['country_name']
            zx = fx['location']
            xr = fx['carrier']
            print(' Country : ', xz)
            print(' Location : ', zx)
            print(' Carrier : ', xr)
        except KeyError:
            print("Anonmize yor Ip!!")
a = input('\n Enter as*h*** number: ')
b = "https://numverify.com"
aq = trex(a, b, 'https://numverify.com/php_helper_scripts/phone_api.php?secret_key={}&number={}')
aq.info()
