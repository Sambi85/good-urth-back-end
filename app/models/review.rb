class Review < ApplicationRecord
    
    belongs_to :farmers
    belongs_to :users

end
