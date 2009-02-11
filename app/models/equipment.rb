class Equipment < ActiveRecord::Base
  belongs_to :category
  belongs_to :staff
  has_many :assignments
end
