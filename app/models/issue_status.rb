# encoding: utf-8

class IssueStatus < ActiveRecord::Base
  validates_uniqueness_of :name
end
