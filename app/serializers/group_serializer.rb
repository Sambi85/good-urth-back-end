class FarmerSerializer < ActiveModel::Serializer
    attributes :id
    
    has_many :itemOrders

end