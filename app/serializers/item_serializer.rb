class ItemSerializer < ActiveModel::Serializer
    attributes :farmer_id, :name, :price, :purchase_unit, :stock_amount, :item_pulled, :url

    has_many :itemOrders
    
    has_one :farmer

end