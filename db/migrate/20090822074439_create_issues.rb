# encoding: utf-8
class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.string :subject
      t.text :description

      t.integer :status_id
      t.integer :priority_id
      t.integer :category_id
      t.integer :author_id
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :issues
  end
end
