require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Equipment do
  before(:each) do
    @valid_attributes = {
      :code => "3000000010",
      :brand => "Lenovo",
      :model => "X61",
      :buy_date => Date.today,
      :price => "1.5"
    }
  end

  it "should create a new instance given valid attributes" do
    Equipment.create!(@valid_attributes)
  end
end
