require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LineItem do
  before(:each) do
    @valid_attributes = {
      :quanlity => 1,
      :product_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    LineItem.create!(@valid_attributes)
  end
end
