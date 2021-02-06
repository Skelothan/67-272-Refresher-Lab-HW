class Child < ApplicationRecord
    # Relationships
    has_many :chores
    has_many :tasks, through: :chores

    # Validations
    validates_presence_of :first_name
    validates_presence_of :last_name

    # Methods
    def name
        return first_name + " " + last_name
    end
end
