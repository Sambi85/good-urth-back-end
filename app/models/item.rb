class Item < ApplicationRecord

has_many :itemOrders
has_many :orders, through: :itemOrders

belongs_to :farmer

end
