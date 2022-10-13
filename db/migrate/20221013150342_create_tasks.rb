class CreateTasks < ActiveRecord::Migration[7.0]
  def self.up
    create_table :tasks do |t|
      t.column :title, :string, :null => false
      t.column :description, :text, :null => true
      t.column :due_date, :datetime, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
