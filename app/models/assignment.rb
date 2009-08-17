# encoding: utf-8
class Assignment < ActiveRecord::Base
  belongs_to :staff
  belongs_to :equipment
end
