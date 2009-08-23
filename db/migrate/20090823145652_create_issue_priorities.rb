class CreateIssuePriorities < ActiveRecord::Migration
  def self.up
    create_table :issue_priorities do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :issue_priorities
  end
end
