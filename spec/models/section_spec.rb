require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Section do

  it "should create a new instance given valid attributes" do
    lambda do 
      Factory.create(:section)
    end.should_not raise_error
  end
end
