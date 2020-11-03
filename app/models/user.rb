class User < ApplicationRecord
    has_many :messages
    has_many :reviews
    has_many :orders
    
    has_many :itemOrders, through: :order
    has_many :farmers, through: :messages
    has_many :farmers, through: :reviews
    
end
