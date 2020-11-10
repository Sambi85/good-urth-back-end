class UserSerializer < ActiveModel::Serializer
    attributes :username, :bio, :email, :phone_number, :avatar

    has_many :messages
    has_many :reviews
    has_many :orders
    
end