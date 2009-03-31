class Purchase < ActiveRecord::Base
  has_one :buyer, :class_name => Staff
  has_one :supplier
end
