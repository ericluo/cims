class Equipment < ActiveRecord::Base
  belongs_to :category
  has_many   :assignments

  def owner
    assignments.first.owner if assignments.size > 0
  end
end
