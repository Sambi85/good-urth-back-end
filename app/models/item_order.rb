class ItemOrder < ApplicationRecord

    belongs_to :item
    belongs_to :order
    belongs_to :group, optional: true
    
end
