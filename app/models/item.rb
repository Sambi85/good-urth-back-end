class Item < ApplicationRecord

has_many :itemOrders
has_many :Orders, through: :itemOrders

belongs_to :farmer

end
