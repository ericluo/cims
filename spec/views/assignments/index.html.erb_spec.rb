require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/assignments/index.html.erb" do
  include AssignmentsHelper
  
  before(:each) do
    assigns[:assignments] = [
      stub_model(Assignment),
      stub_model(Assignment)
    ]
  end

end

