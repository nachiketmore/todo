class Task < ApplicationRecord
    validates_presence_of :titles, :message => "Please enter a title"
    validates_presence_of :descriptions, :message => "Please enter a description"
    validates_presence_of :due_date, :message => "Please select a due date"
end
