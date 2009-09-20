# encoding: utf-8

class Issue < ActiveRecord::Base
  validates_presence_of :subject
  validates_presence_of :priority, :category, :applicant

  belongs_to :status, class_name: "IssueStatus"
  belongs_to :priority, class_name: "IssuePriority"
  belongs_to :category, class_name: "IssueCategory"
  belongs_to :applicant, class_name: "Staff"
  belongs_to :author, class_name: "Staff"

  before_create {|issue|
    issue.status ||= IssueStatus.all.first
  }

end
