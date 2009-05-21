class Product < ActiveRecord::Base
  belongs_to :category, :include => true
end
