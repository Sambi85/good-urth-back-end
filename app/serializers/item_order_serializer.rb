class ItemOrderSerializer < ActiveModel::Serializer
 attributes :item_id, :order_id, :quantity
  
    has_one :item
    has_one :order

end