# encoding: utf-8

require 'aasm'

class Issue < ActiveRecord::Base
  validates_presence_of :subject
  validates_presence_of :priority, :category# , :applicant

  belongs_to :priority, class_name: "IssuePriority"
  belongs_to :category, class_name: "IssueCategory"
  belongs_to :applicant, class_name: "Staff"
  belongs_to :author, class_name: "Staff"

  include ::AASM
  aasm_column :status

  aasm_initial_state :new

  aasm_state :new
  aasm_state :assigned
  aasm_state :open
  aasm_state :closed
  aasm_state :reopen

  aasm_event :assign do
    transitions to: :assigned, from: [:new]
  end

  aasm_event :open do
    transitions to: :open, from: [:assigned]
  end

  aasm_event :close do
    transitions to: :closed, from: [:new, :assigned, :open]
  end

  aasm_event :reopen do
    transitions to: :reopen, from: [:closed]
  end

end
