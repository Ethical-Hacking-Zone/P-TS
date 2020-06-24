#!/usr/bin/python3
import requests
import json
import sys

print ('\n [1] Search Info About Email ')
print ('\n [2] Track Location Of IP ')
choice = int(input("\n Enter choice : "))

if choice == 1:
  try:
      email = input('\n Enter Email : ')
      url = ("https://api.antideo.com/email/" + email)
      r = requests.get(url)
      d = r.content.decode('utf-8')
      q1 = json.loads(d)
      a = (q1['email'])
      b = (q1['free_provider'])
      c = (q1['spam'])
      e = (q1['scam'])
      f = (q1['disposable'])
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
      ip = sys.stdin.readline()
      uri = ("https://api.antideo.com/ip/location/" + ip)
      r = requests.get(uri)
      shh = r.content.decode()
      q3 = json.loads(shh)
      loc = (q3['location'])
      long = (q3['longitude'])
      lat = (q3['latitude'])
      cc = (q3['country_code'])
      c = (q3['city'])
      rg = (q3['region'])
      ac = (q3['accuracy'])
      cy = (q3['country'])
     
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
      aqr = open('location.png', 'wb')
      aqr.write(rr.content)
  except KeyboardInterrupt as di:
      print ('\n Exiting.....')

exit()
