#!/usr/local/bin/ruby -w

require 'httparty'

api_key     = "21c6977742eee43446ec20d18c0b3ffa" # this api key would ideally be passed at runtime, but it's not sensitive in this case
city        = "Los Angeles" # this could be an arg passed at run time as well, but this example only called for one city
units       = "imperial"
 
url         = "https://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=" + api_key + "&units=" + units

response    = HTTParty.get(url)

#using .ceil method here to round off the float to the nearest whole number
temperature = response['main']['temp'].ceil.to_s 
humidity    = response['main']['humidity'].ceil.to_s
description = response['weather'][0]['description']


answer      = "\n" + city + " Weather:\n " + description.upcase + "\n"  + " TEMPERATURE: " + temperature + "F" + "\n" " HUMIDITY: " + humidity + "%"
puts(answer)
