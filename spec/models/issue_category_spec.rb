require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe IssueCategory do

  it "should create a new instance given valid attributes" do
    Factory.create(:issue_category)
  end
end
