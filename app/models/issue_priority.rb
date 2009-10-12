# encoding: utf-8
#

class IssuePriority < ActiveRecord::Base
  validates_uniqueness_of :name
end
