class Farmer < ApplicationRecord

has_many :items
has_many :messages
has_many :reviews

has_many :itemOrders, through: :items
has_many :users, through: :messages
has_many :users, through: :reviews

belongs_to :tent

end
