require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Section do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :priority => "1"
    }
  end

  it "should create a new instance given valid attributes" do
    Section.create!(@valid_attributes)
  end
end
