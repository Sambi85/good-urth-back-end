class GroupSerializer < ActiveModel::Serializer
    attributes :id, :created_at, :updated_at
    
    has_many :itemOrders

end