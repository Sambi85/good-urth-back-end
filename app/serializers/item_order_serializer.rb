class ItemOrderSerializer < ActiveModel::Serializer
    attributes :id, :item_id, :order_id, :quantity, :paid, :created_at, :updated_at, :group_id
 
    has_one :item
    has_one :group
    has_one :order

end