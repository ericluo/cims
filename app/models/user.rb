class User < ActiveRecord::Base
  include Clearance::User

  belongs_to :section
  attr_accessible :name, :room, :phone, :section
end
