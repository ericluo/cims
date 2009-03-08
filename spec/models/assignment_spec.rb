require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Assignment do
  before(:each) do
    @valid_attributes = {
      :assign_date => Date.today,
      :comment => ""
    }
  end

  it "should create a new instance given valid attributes" do
    Assignment.create!(@valid_attributes)
  end
end
