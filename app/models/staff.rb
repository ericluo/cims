# encoding: utf-8
class Staff < ActiveRecord::Base

  attr_accessor :password, :password_confirm

  validates_presence_of :account, :name, :password, :password_confirm
  belongs_to :section
  has_many   :equipment, :through => :assignments

  validate do |staff|
    staff.password_match
  end

  def password_match
    errors.add_to_base("密码不一致") unless password == password_confirm
  end

  def password=(pwd)
    self.encrypted_password = Digest::SHA1.hexdigest(pwd)
    @password = pwd
  end

end
