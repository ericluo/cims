require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Equipment do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :buy_date => Date.today,
      :price => "1.5"
    }
  end

  it "should create a new instance given valid attributes" do
    Equipment.create!(@valid_attributes)
  end
end
