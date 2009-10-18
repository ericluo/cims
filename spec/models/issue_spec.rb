# encoding: utf-8
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

  it "should have the new status after created" do
    # @issue.status.name.should == "待处理"
  end

end
