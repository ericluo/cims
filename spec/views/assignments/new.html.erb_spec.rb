require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/assignments/new.html.erb" do
  include AssignmentsHelper
  
  before(:each) do
    assigns[:assignment] = stub_model(Assignment,
      :new_record? => true
    )
  end

  it "should render new form" do
    render "/assignments/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", assignments_path) do
    end
  end
end


