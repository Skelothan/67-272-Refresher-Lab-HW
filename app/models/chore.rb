class Chore < ApplicationRecord
    # Relationships
    belongs_to :child
    has_many :tasks
end
