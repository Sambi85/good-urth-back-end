class Order < ApplicationRecord
    
    has_many :itemOrders
    has_many :items, through: :itemOrders

    belongs_to :user
    
end
