class GroupSerializer < ActiveModel::Serializer
    attributes :id
    
    has_many :itemOrders

end