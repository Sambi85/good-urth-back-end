class FarmerSerializer < ActiveModel::Serializer
    attributes :id, :username, :bio, :address, :email, :phone_number, :open, :close, :days_open, :is_open
    
    has_many :items
    has_many :messages
    has_many :reviews
    has_many :schedules

end