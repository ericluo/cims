require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Staff do
  it "should have the unique account" do
    lambda do
      Factory.create(:staff, :account => "duplicate")
      Factory.create(:staff, :account => "duplicate")
    end.should raise_error(ActiveRecord::RecordInvalid)
  end

end
