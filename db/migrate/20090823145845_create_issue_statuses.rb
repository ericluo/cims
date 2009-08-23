class CreateIssueStatuses < ActiveRecord::Migration
  def self.up
    create_table :issue_statuses do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :issue_statuses
  end
end
