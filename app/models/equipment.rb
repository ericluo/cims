# encoding: utf-8
class Equipment < ActiveRecord::Base
  validates_presence_of :code, :message => "设备编码不能为空"
  belongs_to :category, :class_name => "ProductCategory", :include => true
  has_many   :assignments

  def owner
    assignments.first.owner if assignments.size > 0
  end
end
