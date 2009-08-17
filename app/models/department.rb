# encoding: utf-8
class Department < ActiveRecord::Base
  has_many :sections
  has_many :staffs, :through => :sections
end
