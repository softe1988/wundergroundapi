class WelcomeController < ApplicationController
  # require 'httparty'
  def index
  # open('http://api.wunderground.com/api/54a3f0a74c50658c/geolookup/conditions/q/GA/Atlanta.json') do |f|
		# 	  json_string = f.read
		# 	 	parsed_json = JSON.parse(json_string)
		# 	  @location = parsed_json['location']['city']
		# 	  @temp_f = parsed_json['current_observation']['temp_f']
		# 	  @temp_c = parsed_json['current_observation']['temp_c']
		# 	  @icon = parsed_json['current_observation']['icon_url']
		# 	  @in_words = parsed_json['current_observation']['weather']
		# 	  @forecast_link = parsed_json['current_observation']['forecast_url']
		# 	  @real_feel = parsed_json['current_observation']['feelslike_f']
	end
 

  def test
  response = HTTParty.get("http://api.wunderground.com/api/dc525e7ffa52770b/geolookup/conditions/q/TX/Dallas.json")
  
  @location = response['location']['city']
  @temp_f = response['current_observation']['temp_f']
  @temp_c = response['current_observation']['temp_c']
  @weather_icon = response['current_observation']['icon_url']
  @weather_words = response['current_observation']['weather'] 
  @forecast_link = response['current_observation']['forecast_url']
  @real_feel = response['current_observation']['feelslike_f']
  end
end
