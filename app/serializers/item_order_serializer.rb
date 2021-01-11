class ItemOrderSerializer < ActiveModel::Serializer
    attributes :id, :item_id, :order_id, :quantity, :paid, :date_purchased
 
    has_one :item
    has_one :order

end