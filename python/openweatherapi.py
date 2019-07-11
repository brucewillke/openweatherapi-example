import json
import requests 

api_key = "21c6977742eee43446ec20d18c0b3ffa"
 
url     = "https://api.openweathermap.org/data/2.5/weather?q=Los Angeles&appid=21c6977742eee43446ec20d18c0b3ffa&units=imperial"

resp = requests.get(url)
print (resp.content)


