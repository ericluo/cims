require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Issue do
  before(:each) do
    @issue = Factory(:issue)
  end

  it "should validate fail when subject isn't given" do
    lambda {
      Factory.create(:issue, subject: nil)
    }.should raise_error
  end

end