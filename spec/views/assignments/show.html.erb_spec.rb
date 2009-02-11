require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/assignments/show.html.erb" do
  include AssignmentsHelper
  before(:each) do
    assigns[:assignment] = @assignment = stub_model(Assignment)
  end

  it "should render attributes in <p>" do
    render "/assignments/show.html.erb"
  end
end

