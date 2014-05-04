require 'open-uri'
require 'json'

class CoordsController < ApplicationController
  def fetch_weather
    @latitude = 42.0538387
    @longitude = -87.67721
    your_api_key = "9b4a2e5ec0c0e1ee955c87ae8c78dfed"

     url = "https://api.forecast.io/forecast/9b4a2e5ec0c0e1ee955c87ae8c78dfed/37.8267,-122.423"
     raw_data = open(url).read
     parsed_data = JSON.parse(raw_data)
     @temperature = parsed_data["currently"]["temperature"]
     @minutely_summary = parsed_data["minutely"]["summary"]
     @hourly_summary = parsed_data["hourly"]["summary"]
     @daily_summary = parsed_data["daily"]["summary"]
  end
end
