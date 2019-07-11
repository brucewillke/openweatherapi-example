require 'httparty'

api_key     = "21c6977742eee43446ec20d18c0b3ffa"
city        = "Los Angeles"
units       = "imperial"
 
url         = "https://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=" + api_key + "&units=" + units

response    = HTTParty.get(url)

temperature = response['main']['temp'].ceil.to_s
humidity    = response['main']['humidity'].ceil.to_s
description = response['weather'][0]['description']


answer      = "\n" + city + " Weather:\n " + description.upcase + "\n"  + " TEMPERATURE: " + temperature + "F" + "\n" " HUMIDITY: " + humidity + "%"
puts(answer)
