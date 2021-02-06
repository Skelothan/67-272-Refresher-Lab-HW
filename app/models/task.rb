class Task < ApplicationRecord
    # Relationships
    belongs_to :chore
    belongs_to :child
end
