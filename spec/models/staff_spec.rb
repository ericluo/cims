require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Staff do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :room => "value for room",
      :phone => "value for phone",
      :account => "eric",
      :password => "ssf",
      :password_confirm => "ssf"
    }
  end

  it "should create a new instance given valid attributes" do
    Staff.create!(@valid_attributes)
  end
end
