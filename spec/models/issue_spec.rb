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
    @issue.status.should == "new"
    @issue.aasm_read_state.should == :new
  end

  it "should have the status method" do
    lambda { Issue.new.aasm_read_state }.should_not raise_error
  end
end
