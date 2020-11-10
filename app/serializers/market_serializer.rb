class MarketSerializer < ActiveModel::Serializer
    attributes :name ,:address, :borough, :latitude, :longitude, :hours_of_operation, :season_dates, :location, :contact, :url, :fmnp, :snap_status, :zip, :operation_months_code, :phone_number

    has_many :schedules
    
end