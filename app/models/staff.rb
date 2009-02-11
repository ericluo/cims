class Staff < ActiveRecord::Base
  belongs_to :section
  has_many   :equipment, :through => :assignments
end
