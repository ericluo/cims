# encoding: utf-8
class Section < ActiveRecord::Base
  belongs_to :department
  has_many   :users

  validates_presence_of   :name
  validates_uniqueness_of :name


end
