#!/usr/bin/python3
import requests
import json
import sys
import os

print ('\n [1] Search Info About Email ')
print ('\n [2] Track Location Of IP ')
choice = int(input("\n Enter choice : "))

if choice == 1:
  try:
      email = input('\n Enter Email : ')
      url = ("https://api.antideo.com/email/" + email)
      r = requests.get(url)
      d = r.content
      with open('email.txt', 'wb') as y:
          y.write(d)
      with open('email.txt') as js:
          data = json.load(js)
      a = (data['email'])
      b = (data['free_provider'])
      c = (data['spam'])
      e = (data['scam'])
      f = (data['disposable'])
      print ('\n Email : ', a)
      print (' Free : ', b)
      print (' Spam : ', c)
      print (' Scam : ', e)
      print (' Disposable : ', f)
  except KeyError as Error:
      print ('\n Use Tor!!!')
  except KeyboardInterrupt as KeyError:
      print ('\n Exiting.....')

elif choice == 2:
  try:
      sys.stdout.write('\n Enter IP : ')
      sys.stdout.flush()
      ip = sys.stdin.readline()

      uri = ("https://api.antideo.com/ip/location/" + ip)
      r = requests.get(uri)
      shh = r.content
      with open('IP.txt', 'wb') as dd:
       dd.write(shh)
      with open('IP.txt') as ff:
       dat = json.load(ff)
      loc = (dat['location'])
      long = (loc['longitude'])
      lat = (loc['latitude'])
      cc = (loc['country_code'])
      c = (loc['city'])
      rg = (loc['region'])
      ac = (loc['accuracy'])
      cy = (loc['country'])
      print ('\n Country : ', cy)
      print (' City : ', c)
      print (' Region : ', rg)
      print (' Countrycode : ', cc)
      print (' Latitude : ', lat)
      print (' Longitude : ', long)
      print ('\n Downloading Location.....')
      drq = (str(lat) + ',' + str(long))
      zde = "640x640"
      sen = "false"
      url = "https://maps.googleapis.com/maps/api/staticmap?key=AIzaSyBfKxcEVzKhnhDKBQ0E_Bx-jI-vrIC2hd0&center={}&zoom={}&size={}&sensor={}".format(drq, 9, zde, sen)
      rr = requests.get(url)
      aqr = open('local.png', 'wb')
      aqr.write(rr.content)
  except KeyboardInterrupt as di:
      print ('\n Exiting.....')

dir = "$HOME/*.txt"
os.system('rm -rf %s' % dir)
exit()
