# encoding: utf-8

class Issue < ActiveRecord::Base
  validates_presence_of :subject

  belongs_to :status, class_name: "IssueStatuses"
  belongs_to :priority, class_name: "IssuePriorities"
  belongs_to :applicant, class_name: "Staff"
  belongs_to :author, class_name: "Staff"
end
