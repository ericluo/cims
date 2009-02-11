require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/assignments/index.html.erb" do
  include AssignmentsHelper
  
  before(:each) do
    assigns[:assignments] = [
      stub_model(Assignment),
      stub_model(Assignment)
    ]
  end

  it "should render list of assignments" do
    render "/assignments/index.html.erb"
  end
end

