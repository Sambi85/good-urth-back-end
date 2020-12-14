class OrderSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :subtotal, :tax, :total, :pick_up

    has_many :itemOrders

    has_one :user

end