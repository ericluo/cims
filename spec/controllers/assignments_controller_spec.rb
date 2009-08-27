require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AssignmentsController do

  def mock_assignment(stubs={})
    @mock_assignment ||= mock_model(Assignment, stubs)
  end

end
