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
		if r.status_code == 200:
			d3 = hashlib.md5((self.phone + s).encode('utf-8')).hexdigest()
			try:
				r2 = requests.get(self.req.format(d3, self.phone), headers=headers)
				fx = json.loads(r2.content.decode())
				xz = fx['country_name']
				zx = fx['location']
				xr = fx['carrier']
				print ('Country : ', xz)
				print ('Location : ', zx)
				print ('Carrier : ', xr)
			except KeyError:
				print ("Anonmize yor Ip!!")
		else:
			print ('Abort')
a1 = input('\n Enter Number: ')
b1 = "https://numverify.com"
aq = trex(a1, b1, 'https://numverify.com/php_helper_scripts/phone_api.php?secret_key={}&number={}')
aq.info()
