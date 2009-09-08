class CreateIssueCategories < ActiveRecord::Migration
  def self.up
    create_table :issue_categories do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :issue_categories
  end
end
