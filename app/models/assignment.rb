class Assignment < ActiveRecord::Base
  belongs_to :owner, :class_name => "Staff"
  belongs_to :equipment
end
