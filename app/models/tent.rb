class Tent < ApplicationRecord
    has_many :farmers
    
    has_many :items, through: :farmers
    # has_many :messages, through: :farmers // not needed
    # has_many :reviews, through: :farmers // not needed
    
    belongs_to :market
end
