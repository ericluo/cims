require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Purchase do
  before(:each) do
    @valid_attributes = {
      :buy_date => Date.today,
      :buyer_id => 1,
      :supplier_id => 1,
      :comment => "value for comment"
    }
  end

  it "should create a new instance given valid attributes" do
    Purchase.create!(@valid_attributes)
  end
end
