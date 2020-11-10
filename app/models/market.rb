require 'httparty'
require 'dotenv'
# require 'pry'
Dotenv.load

class Market < ApplicationRecord

    has_many :schedules
    has_many :farmers, through: :schedules
    
    def self.market_grabber(string)
        response = HTTParty.get("https://data.ny.gov/resource/xjya-f8ng.json?$$app_token=#{ENV['NYC_API_KEY']}&&county=#{string}") 
             
            response.map do |resp|
                Market.create(
                    borough: resp['county'],
                    name: resp['market_name'],
                    location: resp['location'],
                    address: resp['address_line_1'],
                    zip: resp['zip'],
                    contact: resp['contact'],
                    phone: resp['phone'],
                    url: resp['market_link'] ? resp['market_link']['url'] : nil,
                    hours_of_operation: resp['operation_hours'],
                    season_dates: resp['operation_season'],
                    operation_months_code: resp['operation_months_code'],
                    fmnp: resp['fmnp'],
                    snap_status: resp['snap_status'],
                    latitude: resp['latitude'],
                    longitude: resp['longitude'])
            end
    end
end

### Market URLS for NYC ###
# Brooklyn = https://data.ny.gov/resource/xjya-f8ng.json?county=Kings
# Bronx = https://data.ny.gov/resource/xjya-f8ng.json?county=Bronx
# Queens = https://data.ny.gov/resource/xjya-f8ng.json?county=Queens
# Manhattan = https://data.ny.gov/resource/xjya-f8ng.json?county=New%20York
# StatenIsland = https://data.ny.gov/resource/xjya-f8ng.json?county=Richmond
