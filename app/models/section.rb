class Section < ActiveRecord::Base
  belongs_to :department
  has_many :staffs

  validates_presence_of :name
  validates_uniqueness_of :name
end
