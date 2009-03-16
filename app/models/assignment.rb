class Assignment < ActiveRecord::Base
  belongs_to :staff
  belongs_to :equipment
end
