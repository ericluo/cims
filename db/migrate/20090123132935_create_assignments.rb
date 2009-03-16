class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.date :start_date
      t.date :end_date
      t.string :comment
      t.integer :owner_id, :assigned_by_id, :equipment_id
    end
  end

  def self.down
    drop_table :assignments
  end
end
