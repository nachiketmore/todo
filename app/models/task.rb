class Task < ApplicationRecord
    validates_presence_of :title, :message => "Please enter a title"
    validates_presence_of :description, :message => "Please enter a description"
    validates_presence_of :due_date, :message => "Please select a due date"

    def self.dispatch_emails
        Task.all(:conditions => ["? = DATE_SUB(due_date, INTERVAL -1 DAY)", 
                 Time.now]).each do |task|
            AutomailerMailer.with(task: task).task_created.deliver_now
        end
    end
end
