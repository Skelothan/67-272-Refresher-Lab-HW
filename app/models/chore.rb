class Chore < ApplicationRecord
    # Relationships
    belongs_to :child
    belongs_to :task

    # Validations
    validates_date :due_on

    # Scopes
    scope :by_task,             lambda{joins("JOIN tasks ON tasks.id = chores.task_id").order("tasks.name")}
    scope :chronological,       lambda{order(:due_on, :completed)}
    scope :pending,             lambda{where(completed: false)}
    scope :done,                lambda{where(completed: true)}
    scope :upcoming,            lambda{where("due_on >= ?", Date.today)}
    scope :past,                lambda{where("due_on < ?", Date.today)}

    # Methods
    def status
        return completed ? "Completed" : "Pending"
    end

end
