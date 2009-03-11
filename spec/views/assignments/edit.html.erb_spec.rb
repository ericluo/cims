require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/assignments/edit.html.erb" do
  include AssignmentsHelper
  
  before(:each) do
    assigns[:assignment] = @assignment = stub_model(Assignment,
      :new_record? => false
    )
  end
end


