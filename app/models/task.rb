class Task < ApplicationRecord
    # Relationships
    has_many :chore
    has_many :child

    
end
