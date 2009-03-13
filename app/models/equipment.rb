class Equipment < ActiveRecord::Base
  belongs_to :category
  belongs_to :owner, :class_name => "Staff"
  has_many :assignments
end
